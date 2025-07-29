class StringUtils {
  static bool isNullOrEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }

  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
