/// Custom application exception with detailed error information
class AppException implements Exception {
  final String message;
  final int? code;
  final AppExceptionType type;
  final Map<String, dynamic>? details;
  final StackTrace? stackTrace;

  AppException(
    this.message, {
    this.code,
    this.type = AppExceptionType.unknown,
    this.details,
    this.stackTrace,
  });

  @override
  String toString() {
    final buffer = StringBuffer('AppException(');
    buffer.write('type: $type, ');
    if (code != null) buffer.write('code: $code, ');
    buffer.write('message: $message');
    if (details != null && details!.isNotEmpty) {
      buffer.write(', details: $details');
    }
    buffer.write(')');
    return buffer.toString();
  }

  /// Create a copy of this exception with updated fields
  AppException copyWith({
    String? message,
    int? code,
    AppExceptionType? type,
    Map<String, dynamic>? details,
    StackTrace? stackTrace,
  }) {
    return AppException(
      message ?? this.message,
      code: code ?? this.code,
      type: type ?? this.type,
      details: details ?? this.details,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }

  /// Check if this is a network-related error
  bool get isNetworkError => type == AppExceptionType.network;

  /// Check if this is an authentication error
  bool get isAuthError => type == AppExceptionType.authentication;

  /// Check if this is a validation error
  bool get isValidationError => type == AppExceptionType.validation;

  /// Check if this is a server error
  bool get isServerError => type == AppExceptionType.server;

  /// Check if this is a client error
  bool get isClientError => type == AppExceptionType.client;
}

/// Types of application exceptions
enum AppExceptionType {
  /// Unknown or unhandled error
  unknown,

  /// Network connectivity issues
  network,

  /// Authentication failures
  authentication,

  /// Authorization/permission issues
  authorization,

  /// Input validation errors
  validation,

  /// Client-side errors (4xx)
  client,

  /// Server-side errors (5xx)
  server,

  /// Request was cancelled
  cancelled,

  /// Security-related errors
  security,

  /// Timeout errors
  timeout,
}

/// Extension for AppExceptionType
extension AppExceptionTypeExtension on AppExceptionType {
  String get displayName {
    switch (this) {
      case AppExceptionType.unknown:
        return 'Unknown Error';
      case AppExceptionType.network:
        return 'Network Error';
      case AppExceptionType.authentication:
        return 'Authentication Error';
      case AppExceptionType.authorization:
        return 'Authorization Error';
      case AppExceptionType.validation:
        return 'Validation Error';
      case AppExceptionType.client:
        return 'Client Error';
      case AppExceptionType.server:
        return 'Server Error';
      case AppExceptionType.cancelled:
        return 'Request Cancelled';
      case AppExceptionType.security:
        return 'Security Error';
      case AppExceptionType.timeout:
        return 'Timeout Error';
    }
  }

  bool get isRetryable {
    switch (this) {
      case AppExceptionType.network:
      case AppExceptionType.server:
      case AppExceptionType.timeout:
        return true;
      default:
        return false;
    }
  }
}
