class RegexUtils {
  /// Extract digits from a string
  /// i.e input: 'Version 6.0.1-beta45' output: ['6', '0', '1', '45']
  static RegExp extractDigitPattern = RegExp(r'\d+');

  /// i.e input: 'Version 6.0.1-beta45' output: 60145
  static RegExp extractConcatDigitPattern = RegExp(r'\D');

  /// i.e
  static RegExp alphaNumericOnly = RegExp(r'^[a-zA-Z0-9]+$');

  static RegExp alphaNumericAndSpecialChars = RegExp(r'[A-Za-z0-9!@#\$%\^&*().]+');

  /// i.e allow only alphabets and arabic
  static RegExp alphaArabicOnly = RegExp(r'[\u0621-\u064A\u0660-\u0669a-zA-Z\s]');

  static RegExp alphaOnly = RegExp(r'[a-zA-Z]');

  static RegExp alphaAndSpacesOnly = RegExp(r'^[a-zA-Z ]*$', unicode: true);

  static RegExp decimalPointOnly = RegExp(r'^\d+\.');

  static RegExp alphaNumeric = RegExp(r'[a-zA-Z0-9]');

  /// Pattern to validate that string contains only digits (0-9)
  static RegExp digitsOnly = RegExp(r'^\d+$');
}
