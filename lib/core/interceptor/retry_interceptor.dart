import 'package:dio/dio.dart';
import 'dart:async';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final Dio dio;

  RetryOnConnectionChangeInterceptor(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (_shouldRetry(err)) {
      try {
        final response = await dio.fetch(err.requestOptions);
        return handler.resolve(response);
      } catch (e) {
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.unknown ||
        err.type == DioExceptionType.receiveTimeout;
  }
}
