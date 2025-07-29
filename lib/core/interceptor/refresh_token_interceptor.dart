import 'package:dio/dio.dart';
import 'package:vitech_blockchain/core/interceptor/auth_refresh_service.dart';

class RefreshTokenInterceptor extends Interceptor {
  final Dio dio;
  final AuthRefreshService refreshService;

  RefreshTokenInterceptor({
    required this.dio,
    required this.refreshService,
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        final newAccessToken = await refreshService.refreshTokenAndGetAccessToken();
        if (newAccessToken != null) {
          final newRequest = err.requestOptions..headers['Authorization'] = 'Bearer $newAccessToken';
          final response = await dio.fetch(newRequest);
          return handler.resolve(response);
        }
      } catch (_) {
        // Nếu gọi refresh fail thì vẫn xử lý như cũ
        return handler.next(err);
      }
    }
    return handler.next(err);
  }
}
