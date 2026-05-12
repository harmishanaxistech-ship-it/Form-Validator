/// A helper class for managing form-wide validation logic.
class FormValidator {
  /// Private constructor to prevent instantiation.
  FormValidator._();

  /// Validates a list of validation results and returns the first error found.
  /// If all are valid (null), returns null.
  static String? validate(List<String?> validations) {
    for (var result in validations) {
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}

/// Extension methods for [String] to perform common validations.
extension ValidatorStringExtension on String {
  /// Returns true if the string is a valid email.
  bool get isValidEmail {
    return RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(this);
  }

  /// Returns true if the string is a valid phone number.
  bool get isValidPhone {
    return RegExp(r"^\+?[0-9]{10,15}$").hasMatch(this);
  }

  /// Returns true if the string is not empty.
  bool get isNotEmptyField => trim().isNotEmpty;
}
