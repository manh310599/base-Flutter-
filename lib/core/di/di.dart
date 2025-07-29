import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vitech_blockchain/core/services/local_storage.dart';

import '../interceptor/auth_refresh_service.dart';
import '../interceptor/refresh_token_interceptor.dart';
import '../services/dio_service.dart';



final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Register LocalStorage first
  final localStorage = await LocalStorage.getInstance();
  getIt.registerSingleton<LocalStorage>(localStorage);

  // Create a basic Dio instance for AuthRefreshService
  final basicDio = Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL'] ?? '',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  // Register AuthRefreshService
  final authRefreshService = AuthRefreshService(
    dio: basicDio,
    storage: localStorage,
  );
  getIt.registerSingleton<AuthRefreshService>(authRefreshService);

  // Register RefreshTokenInterceptor
  final refreshTokenInterceptor = RefreshTokenInterceptor(
    dio: basicDio,
    refreshService: authRefreshService,
  );
  getIt.registerSingleton<RefreshTokenInterceptor>(refreshTokenInterceptor);

  // Create the main Dio instance with all interceptors
  final appDio = DioService.create(
    getAccessToken: () => localStorage.getAccessToken(),
    refreshTokenInterceptor: refreshTokenInterceptor,
  );

  getIt.registerSingleton<Dio>(appDio);
}
