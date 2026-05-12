import '../regex/regex_patterns.dart';

class EmailValidator {
  static String? validate(String? value, {String? message}) {
    if (value == null || value.isEmpty) {
      return null; // Handle required check separately or use RequiredValidator
    }
    if (!RegexPatterns.email.hasMatch(value)) {
      return message ?? 'Enter a valid email address';
    }
    return null;
  }
}
