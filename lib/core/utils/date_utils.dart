import 'package:intl/intl.dart';

class AppDateUtils {
  static String format(DateTime date, {String pattern = 'dd/MM/yyyy'}) {
    return DateFormat(pattern).format(date);
  }

  static DateTime? parse(String input, {String pattern = 'dd/MM/yyyy'}) {
    try {
      return DateFormat(pattern).parseStrict(input);
    } catch (_) {
      return null;
    }
  }
}
