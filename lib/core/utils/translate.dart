import 'package:flutter/material.dart';
import 'package:vitech_blockchain/core/constants/language.dart';

import 'asset.dart';


class Translate {
  final Locale locale;
  static const LocalizationsDelegate<Translate> delegate = AppLocaleDelegate();
  late Map<String, String> _localizedStrings;

  Translate(this.locale);

  static Translate of(BuildContext context) {
    return Localizations.of<Translate>(context, Translate)!;
  }

  Future<bool> load() async {
    final jsonMap = await UtilAsset.loadJson(
      "assets/locale/${locale.languageCode}.json",
    );

    _localizedStrings = _flattenMap(jsonMap);

    return true;
  }

  /// Recursively flattens nested JSON structure using dot notation
  /// Example: {"common": {"next": "Next"}} becomes {"common.next": "Next"}
  Map<String, String> _flattenMap(Map<String, dynamic> map, [String prefix = '']) {
    final Map<String, String> result = {};

    map.forEach((key, value) {
      final String newKey = prefix.isEmpty ? key : '$prefix.$key';

      if (value is Map<String, dynamic>) {
        // Recursively flatten nested objects
        result.addAll(_flattenMap(value, newKey));
      } else {
        // Convert value to string and add to result
        result[newKey] = value.toString();
      }
    });

    return result;
  }

  /// Translates a key to localized string
  /// Supports both flat keys and nested keys using dot notation
  /// Example: translate('common.next') or translate('error.network')
  String translate(String? key) {
    if (key == null || key.isEmpty) return '';
    return _localizedStrings[key] ?? key;
  }

  /// Convenience method for shorter syntax
  String t(String? key) => translate(key);
}

class AppLocaleDelegate extends LocalizationsDelegate<Translate> {
  const AppLocaleDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLanguage.supportLanguage.contains(locale);
  }

  @override
  Future<Translate> load(Locale locale) async {
    Translate localizations = Translate(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppLocaleDelegate old) => false;
}
