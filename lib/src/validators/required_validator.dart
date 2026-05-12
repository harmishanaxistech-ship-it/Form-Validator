class RequiredValidator {
  static String? validate(dynamic value, {String? message}) {
    if (value == null || (value is String && value.trim().isEmpty)) {
      return message ?? 'This field is required';
    }
    return null;
  }
}
