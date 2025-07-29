import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final Future<String?> Function() getAccessToken;

  AuthInterceptor({required this.getAccessToken});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final token = await getAccessToken();

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }

      // Thiết lập mặc định Accept + Content-Type nếu chưa có
      options.headers.putIfAbsent('Accept', () => 'application/json');
      options.headers.putIfAbsent('Content-Type', () => 'application/json');

      handler.next(options);
    } catch (e) {
      handler.next(options); // Không chặn request nếu có lỗi lấy token
    }
  }
}
