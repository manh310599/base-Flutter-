import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


import '../interceptor/auth_interceptor.dart';
import '../interceptor/refresh_token_interceptor.dart';
import '../interceptor/retry_interceptor.dart';

class DioService {
  static Dio create({
    required Future<String?> Function() getAccessToken,
    required RefreshTokenInterceptor refreshTokenInterceptor,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['BASE_URL'] ?? '',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.addAll([
      RetryOnConnectionChangeInterceptor(dio),
      AuthInterceptor(getAccessToken: getAccessToken),
      refreshTokenInterceptor,
    ]);

    return dio;
  }
}
