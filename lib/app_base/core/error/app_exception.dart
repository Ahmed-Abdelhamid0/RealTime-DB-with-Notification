class AppException implements Exception {
  const AppException(this.message, {this.title});
  final String message;
  final String? title;

  @override
  String toString() => message;
}
