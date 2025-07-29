import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:vitech_blockchain/core/constants/storage_constants.dart';

class LocalStorage {
  final FlutterSecureStorage _secureStorage;

  static Future<LocalStorage> getInstance() async {
    const secureStorage = FlutterSecureStorage();
    return LocalStorage._(secureStorage);
  }

  const LocalStorage._(this._secureStorage);

  Future<String?> getAccessToken() async =>
      await _secureStorage.read(key: StorageConstants.accessTokenKey);

  Future<String?> getRefreshToken() async =>
      await _secureStorage.read(key: StorageConstants.refreshTokenKey);

  Future<void> saveAccessToken(String token) async =>
      await _secureStorage.write(key: StorageConstants.accessTokenKey, value: token);

  Future<void> saveRefreshToken(String token) async =>
      await _secureStorage.write(key: StorageConstants.refreshTokenKey, value: token);

  Future<void> clearTokens() async {
    await _secureStorage.delete(key: StorageConstants.accessTokenKey);
    await _secureStorage.delete(key: StorageConstants.refreshTokenKey);
  }

  Future<String?> getTheme() async {
    final theme = await _secureStorage.read(key: StorageConstants.themeKey);
    return theme;
  }

  //get locale
  Future<String?> getLocale() async {
    final locale = await _secureStorage.read(key: StorageConstants.languageKey);
    return locale;
  }

  Future<void> clearAll() async => await _secureStorage.deleteAll();
}
