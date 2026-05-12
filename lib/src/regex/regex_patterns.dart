/// A utility class containing common regular expression patterns for validation.
class RegexPatterns {
  /// Private constructor to prevent instantiation.
  RegexPatterns._();

  /// Regular expression for email validation.
  static final RegExp email = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  /// Regular expression for phone number validation (general international).
  static final RegExp phone = RegExp(r"^\+?[0-9]{10,15}$");

  /// Regular expression for Indian mobile number validation.
  static final RegExp indianPhone = RegExp(r"^[6-9]\d{9}$");

  /// Regular expression for URL validation.
  static final RegExp url = RegExp(
    r"^(https?://)?([\da-z.-]+)\.([a-z.]{2,6})([/\w .-]*)*\/?$",
  );

  /// Regular expression for OTP validation (6 digits).
  static final RegExp otp = RegExp(r"^\d{6}$");

  /// Regular expression for PAN card validation (India).
  static final RegExp panCard = RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$");

  /// Regular expression for Aadhaar card validation (India).
  static final RegExp aadhaar = RegExp(r"^\d{12}$");

  /// Regular expression for PIN code validation (India).
  static final RegExp pinCode = RegExp(r"^\d{6}$");

  /// Regular expression for name validation (letters and spaces).
  static final RegExp name = RegExp(r"^[a-zA-Z\s]+$");

  /// Regular expression for numeric only validation.
  static final RegExp numeric = RegExp(r"^\d+$");
}
