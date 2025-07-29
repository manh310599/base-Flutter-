import 'dart:developer' as developer;

class AppLogger {
  static void d(String message, {String tag = 'DEBUG'}) {
    developer.log(message, name: tag);
  }

  static void e(Object error, {String tag = 'ERROR', StackTrace? stackTrace}) {
    developer.log(error.toString(), name: tag, error: error, stackTrace: stackTrace);
  }
}
