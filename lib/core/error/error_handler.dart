import 'app_exception.dart';
import 'failure.dart';
import 'package:dio/dio.dart';

class ErrorHandler {
  static Failure handle(dynamic error) {
    if (error is AppException) {
      return ServerFailure(error.message);
    } else if (error is DioException) {
      return _handleDioError(error);
    } else {
      return UnknownFailure("Đã có lỗi xảy ra. Vui lòng thử lại sau.");
    }
  }

  static Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return NetworkFailure("Kết nối mạng không ổn định.");
      case DioExceptionType.badResponse:
        return ServerFailure("Máy chủ phản hồi lỗi.");
      case DioExceptionType.cancel:
        return UnknownFailure("Yêu cầu đã bị huỷ.");
      default:
        return UnknownFailure("Không xác định được lỗi.");
    }
  }
}
