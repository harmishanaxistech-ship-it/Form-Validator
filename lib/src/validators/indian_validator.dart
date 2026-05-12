import '../regex/regex_patterns.dart';

class IndianValidator {
  static String? validatePAN(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegexPatterns.panCard.hasMatch(value)) {
      return message ?? 'Enter a valid PAN card number';
    }
    return null;
  }

  static String? validateAadhaar(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegexPatterns.aadhaar.hasMatch(value)) {
      return message ?? 'Enter a valid 12-digit Aadhaar number';
    }
    return null;
  }

  static String? validatePinCode(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegexPatterns.pinCode.hasMatch(value)) {
      return message ?? 'Enter a valid 6-digit PIN code';
    }
    return null;
  }
}
