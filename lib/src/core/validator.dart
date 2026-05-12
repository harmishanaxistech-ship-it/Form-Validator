import '../validators/email_validator.dart';
import '../validators/password_validator.dart';
import '../validators/phone_validator.dart';
import '../validators/indian_validator.dart';
import '../validators/required_validator.dart';
import '../regex/regex_patterns.dart';

/// A utility class providing various validation methods for common input fields.
class Validator {
  /// Private constructor to prevent instantiation.
  Validator._();

  /// Validates if the field is not empty.
  static String? required(dynamic value, {String? message}) =>
      RequiredValidator.validate(value, message: message);

  /// Validates email address.
  static String? email(String? value, {String? message}) =>
      EmailValidator.validate(value, message: message);

  /// Validates password with custom requirements.
  static String? password(
    String? value, {
    String? message,
    int minLength = 6,
    bool requireUppercase = false,
    bool requireLowercase = false,
    bool requireSpecialCharacter = false,
    bool requireNumber = false,
  }) =>
      PasswordValidator.validate(
        value,
        message: message,
        minLength: minLength,
        requireUppercase: requireUppercase,
        requireLowercase: requireLowercase,
        requireSpecialCharacter: requireSpecialCharacter,
        requireNumber: requireNumber,
      );

  /// Validates confirm password.
  static String? confirmPassword(
    String? value,
    String? originalPassword, {
    String? message,
  }) =>
      PasswordValidator.confirmPassword(value, originalPassword,
          message: message);

  /// Validates general phone number.
  static String? phone(String? value, {String? message}) =>
      PhoneValidator.validate(value, message: message);

  /// Validates Indian mobile number.
  static String? indianPhone(String? value, {String? message}) =>
      PhoneValidator.validateIndian(value, message: message);

  /// Validates PAN card (India).
  static String? pan(String? value, {String? message}) =>
      IndianValidator.validatePAN(value, message: message);

  /// Validates Aadhaar card (India).
  static String? aadhaar(String? value, {String? message}) =>
      IndianValidator.validateAadhaar(value, message: message);

  /// Validates PIN code (India).
  static String? pinCode(String? value, {String? message}) =>
      IndianValidator.validatePinCode(value, message: message);

  /// Validates URL.
  static String? url(String? value, {String? message}) {
    if (value == null || value.isEmpty) return null;
    if (!RegexPatterns.url.hasMatch(value)) {
      return message ?? 'Enter a valid URL';
    }
    return null;
  }

  /// Validates name (letters and spaces only).
  static String? name(String? value, {String? message}) {
    if (value == null || value.isEmpty) return null;
    if (!RegexPatterns.name.hasMatch(value)) {
      return message ?? 'Enter a valid name';
    }
    return null;
  }

  /// Validates numeric values.
  static String? numeric(String? value, {String? message}) {
    if (value == null || value.isEmpty) return null;
    if (!RegexPatterns.numeric.hasMatch(value)) {
      return message ?? 'Enter a valid number';
    }
    return null;
  }

  /// Validates 6-digit OTP.
  static String? otp(String? value, {String? message}) {
    if (value == null || value.isEmpty) return null;
    if (!RegexPatterns.otp.hasMatch(value)) {
      return message ?? 'Enter a valid 6-digit OTP';
    }
    return null;
  }
}
