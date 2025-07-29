class Validators {
  /// ✅ Kiểm tra email hợp lệ
  static String? validateEmail(String? value, {String message = 'Email không hợp lệ'}) {
    if (value == null || value.trim().isEmpty) return 'Email không được để trống';
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value.trim())) return message;
    return null;
  }

  /// ✅ Kiểm tra password (min 6 ký tự)
  static String? validatePassword(String? value, {int minLength = 6}) {
    if (value == null || value.isEmpty) return 'Mật khẩu không được để trống';
    if (value.length < minLength) return 'Mật khẩu phải có ít nhất $minLength ký tự';
    return null;
  }

  /// ✅ Kiểm tra số điện thoại (Việt Nam)
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) return 'Số điện thoại không được để trống';
    final regex = RegExp(r'^(0|\+84)[1-9][0-9]{8}$');
    if (!regex.hasMatch(value.trim())) return 'Số điện thoại không hợp lệ';
    return null;
  }

  /// ✅ Kiểm tra rỗng
  static String? validateNotEmpty(String? value, {String message = 'Không được để trống'}) {
    if (value == null || value.trim().isEmpty) return message;
    return null;
  }

  /// ✅ Kiểm tra xác nhận mật khẩu
  static String? validateConfirmPassword(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) return 'Vui lòng nhập lại mật khẩu';
    if (password != confirmPassword) return 'Mật khẩu không khớp';
    return null;
  }

  /// ✅ Kiểm tra số
  static String? validateNumber(String? value, {String message = 'Vui lòng nhập số hợp lệ'}) {
    if (value == null || double.tryParse(value.trim()) == null) return message;
    return null;
  }

  /// ✅ Kiểm tra username
  static String? validateUsername(String? value, {int minLength = 3}) {
    if (value == null || value.trim().isEmpty) return 'Tên người dùng không được để trống';
    if (value.trim().length < minLength) return 'Tên người dùng phải có ít nhất $minLength ký tự';
    return null;
  }

  /// ✅ Kiểm tra mã OTP
  static String? validateOTP(String? value, {int length = 6}) {
    if (value == null || value.trim().isEmpty) return 'Vui lòng nhập mã OTP';
    if (value.trim().length != length) return 'Mã OTP phải gồm $length số';
    return null;
  }

  /// ✅ Kiểm tra độ dài cụ thể
  static String? validateLength(String? value, {int? min, int? max}) {
    if (value == null || value.trim().isEmpty) return 'Trường này không được để trống';
    final length = value.trim().length;
    if (min != null && length < min) return 'Phải có ít nhất $min ký tự';
    if (max != null && length > max) return 'Không được vượt quá $max ký tự';
    return null;
  }
}
