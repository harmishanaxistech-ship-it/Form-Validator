# form_sense

A production-ready Flutter package for validating forms and user input with a clean and simple API.

## Features

- **Standard Validators**: Email, Password, URL, Name, Phone, Numeric.
- **Security**: Password validation with length, uppercase, lowercase, special character, and number requirements.
- **Indian Validators**: PAN Card, Aadhaar Card, PIN Code, Indian Mobile Number.
- **General**: Required field validation, OTP (6-digit) validation.
- **Helper**: `FormValidator.validate` for combining multiple validations.
- **Extensions**: String extensions like `isValidEmail`.

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  form_sense:
    path: ./
```

## Usage

### Simple Usage

```dart
TextFormField(
  validator: (value) => Validator.email(value),
)
```

### Custom Message

```dart
Validator.email(value, message: "Please enter a valid email address");
```

### Password Validation

```dart
Validator.password(
  value,
  minLength: 8,
  requireUppercase: true,
  requireSpecialCharacter: true,
  requireNumber: true,
);
```

### Multiple Validations

```dart
TextFormField(
  validator: (value) => FormValidator.validate([
    Validator.required(value),
    Validator.email(value),
  ]),
)
```

### Extensions

```dart
if ("test@example.com".isValidEmail) {
  // Do something
}
```

## Supported Validators

- `Validator.required(value)`
- `Validator.email(value)`
- `Validator.password(value, ...)`
- `Validator.confirmPassword(value, originalPassword)`
- `Validator.phone(value)`
- `Validator.indianPhone(value)`
- `Validator.pan(value)`
- `Validator.aadhaar(value)`
- `Validator.pinCode(value)`
- `Validator.url(value)`
- `Validator.name(value)`
- `Validator.numeric(value)`
- `Validator.otp(value)`

## License

MIT
