import 'package:dio/dio.dart';
import 'package:vitech_blockchain/core/services/local_storage.dart';

class AuthRefreshService {
  final Dio dio;
  final LocalStorage storage;

  AuthRefreshService({
    required this.dio,
    required this.storage,
  });

  Future<String?> refreshTokenAndGetAccessToken() async {
    final refreshToken = await storage.getRefreshToken();
    if (refreshToken == null) return null;

    final response = await dio.post('/auth/refresh', data: {
      'refresh_token': refreshToken,
    });

    final newAccessToken = response.data['access_token'];
    if (newAccessToken != null) {
      await storage.saveAccessToken(newAccessToken);
      return newAccessToken;
    }

    return null;
  }
}
