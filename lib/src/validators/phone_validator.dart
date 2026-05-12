import '../regex/regex_patterns.dart';

class PhoneValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegexPatterns.phone.hasMatch(value)) {
      return message ?? 'Enter a valid phone number';
    }
    return null;
  }

  static String? validateIndian(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegexPatterns.indianPhone.hasMatch(value)) {
      return message ?? 'Enter a valid 10-digit Indian mobile number';
    }
    return null;
  }
}
