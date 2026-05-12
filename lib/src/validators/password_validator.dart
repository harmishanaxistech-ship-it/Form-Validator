class PasswordValidator {
  static String? validate(
    String? value, {
    String? message,
    int minLength = 6,
    bool requireUppercase = false,
    bool requireLowercase = false,
    bool requireSpecialCharacter = false,
    bool requireNumber = false,
  }) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (value.length < minLength) {
      return message ?? 'Password must be at least $minLength characters long';
    }

    if (requireUppercase && !value.contains(RegExp(r'[A-Z]'))) {
      return message ?? 'Password must contain at least one uppercase letter';
    }

    if (requireLowercase && !value.contains(RegExp(r'[a-z]'))) {
      return message ?? 'Password must contain at least one lowercase letter';
    }

    if (requireSpecialCharacter &&
        !value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return message ?? 'Password must contain at least one special character';
    }

    if (requireNumber && !value.contains(RegExp(r'[0-9]'))) {
      return message ?? 'Password must contain at least one number';
    }

    return null;
  }

  static String? confirmPassword(
    String? value,
    String? originalPassword, {
    String? message,
  }) {
    if (value != originalPassword) {
      return message ?? 'Passwords do not match';
    }
    return null;
  }
}
