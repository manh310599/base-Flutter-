import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/storage_constants.dart';
import '../constants/language.dart';

/// Service for managing theme and locale preferences
class ThemeService {
  static ThemeService? _instance;
  late SharedPreferences _prefs;

  ThemeService._internal();

  factory ThemeService() {
    return _instance ??= ThemeService._internal();
  }

  /// Initialize the service
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Get current theme mode
  ThemeMode getThemeMode() {
    final themeString = _prefs.getString(StorageConstants.themeKey) ?? 
                       StorageConstants.defaultTheme;
    
    switch (themeString) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.light;
    }
  }

  /// Save theme mode
  Future<void> setThemeMode(ThemeMode themeMode) async {
    String themeString;
    switch (themeMode) {
      case ThemeMode.light:
        themeString = 'light';
        break;
      case ThemeMode.dark:
        themeString = 'dark';
        break;
      case ThemeMode.system:
        themeString = 'system';
        break;
    }
    
    await _prefs.setString(StorageConstants.themeKey, themeString);
  }

  /// Get current locale
  Locale getLocale() {
    final languageCode = _prefs.getString(StorageConstants.languageKey) ?? 
                        StorageConstants.defaultLanguage;
    
    // Validate if the language is supported
    final locale = Locale(languageCode);
    if (AppLanguage.supportLanguage.contains(locale)) {
      return locale;
    }
    
    // Return default if not supported
    return AppLanguage.defaultLanguage;
  }

  /// Save locale
  Future<void> setLocale(Locale locale) async {
    await _prefs.setString(StorageConstants.languageKey, locale.languageCode);
  }

  /// Check if this is first launch
  bool isFirstLaunch() {
    return _prefs.getBool(StorageConstants.firstLaunchKey) ?? true;
  }

  /// Mark first launch as completed
  Future<void> setFirstLaunchCompleted() async {
    await _prefs.setBool(StorageConstants.firstLaunchKey, false);
  }

  /// Get app version
  String? getAppVersion() {
    return _prefs.getString(StorageConstants.appVersionKey);
  }

  /// Save app version
  Future<void> setAppVersion(String version) async {
    await _prefs.setString(StorageConstants.appVersionKey, version);
  }

  /// Clear all theme and locale preferences
  Future<void> clearPreferences() async {
    await Future.wait([
      _prefs.remove(StorageConstants.themeKey),
      _prefs.remove(StorageConstants.languageKey),
    ]);
  }

  /// Reset to default settings
  Future<void> resetToDefaults() async {
    await Future.wait([
      setThemeMode(ThemeMode.light),
      setLocale(AppLanguage.defaultLanguage),
    ]);
  }

  /// Get all available themes
  List<ThemeOption> getAvailableThemes() {
    return [
      ThemeOption(
        mode: ThemeMode.light,
        name: 'Light',
        description: 'Light theme',
        icon: Icons.light_mode,
      ),
      ThemeOption(
        mode: ThemeMode.dark,
        name: 'Dark',
        description: 'Dark theme',
        icon: Icons.dark_mode,
      ),
      ThemeOption(
        mode: ThemeMode.system,
        name: 'System',
        description: 'Follow system theme',
        icon: Icons.brightness_auto,
      ),
    ];
  }

  /// Get all available languages
  List<LanguageOption> getAvailableLanguages() {
    return AppLanguage.supportLanguage.map((locale) {
      return LanguageOption(
        locale: locale,
        name: AppLanguage.getGlobalLanguageName(locale.languageCode),
        nativeName: _getNativeName(locale.languageCode),
        flag: _getFlagEmoji(locale.languageCode),
      );
    }).toList();
  }

  /// Get native language name
  String _getNativeName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'vi':
        return 'Tiếng Việt';
      case 'ar':
        return 'العربية';
      case 'da':
        return 'Dansk';
      case 'de':
        return 'Deutsch';
      case 'el':
        return 'Ελληνικά';
      case 'fr':
        return 'Français';
      case 'he':
        return 'עברית';
      case 'id':
        return 'Bahasa Indonesia';
      case 'ja':
        return '日本語';
      case 'ko':
        return '한국어';
      case 'lo':
        return 'ລາວ';
      case 'nl':
        return 'Nederlands';
      case 'zh':
        return '中文';
      case 'fa':
        return 'فارسی';
      case 'km':
        return 'ខ្មែរ';
      case 'pt':
        return 'Português';
      case 'ru':
        return 'Русский';
      case 'tr':
        return 'Türkçe';
      case 'hi':
        return 'हिन्दी';
      case 'es':
        return 'Español';
      default:
        return AppLanguage.getGlobalLanguageName(languageCode);
    }
  }

  /// Get flag emoji for language
  String _getFlagEmoji(String languageCode) {
    switch (languageCode) {
      case 'en':
        return '🇺🇸';
      case 'vi':
        return '🇻🇳';
      case 'ar':
        return '🇸🇦';
      case 'da':
        return '🇩🇰';
      case 'de':
        return '🇩🇪';
      case 'el':
        return '🇬🇷';
      case 'fr':
        return '🇫🇷';
      case 'he':
        return '🇮🇱';
      case 'id':
        return '🇮🇩';
      case 'ja':
        return '🇯🇵';
      case 'ko':
        return '🇰🇷';
      case 'lo':
        return '🇱🇦';
      case 'nl':
        return '🇳🇱';
      case 'zh':
        return '🇨🇳';
      case 'fa':
        return '🇮🇷';
      case 'km':
        return '🇰🇭';
      case 'pt':
        return '🇧🇷';
      case 'ru':
        return '🇷🇺';
      case 'tr':
        return '🇹🇷';
      case 'hi':
        return '🇮🇳';
      case 'es':
        return '🇪🇸';
      default:
        return '🌐';
    }
  }
}

/// Theme option model
class ThemeOption {
  final ThemeMode mode;
  final String name;
  final String description;
  final IconData icon;

  ThemeOption({
    required this.mode,
    required this.name,
    required this.description,
    required this.icon,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ThemeOption && other.mode == mode;
  }

  @override
  int get hashCode => mode.hashCode;
}

/// Language option model
class LanguageOption {
  final Locale locale;
  final String name;
  final String nativeName;
  final String flag;

  LanguageOption({
    required this.locale,
    required this.name,
    required this.nativeName,
    required this.flag,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LanguageOption && other.locale == locale;
  }

  @override
  int get hashCode => locale.hashCode;
}
