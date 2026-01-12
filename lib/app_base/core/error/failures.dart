

import 'package:equatable/equatable.dart';
import 'package:realtime_ex/app_base/core/error/fields_errors.dart';
import 'package:realtime_ex/app_base/shared/models/ctas.dart';

abstract class Failure extends Equatable {
  const Failure({
    this.message,
    this.errorCode,
    this.errorTitle,
    this.errorMessage,
    this.fieldErrors,
    this.ctas,
  });

  final String? message;
  final String? errorCode;
  final String? errorTitle;
  final String? errorMessage;
  final List<FieldErrors>? fieldErrors;
  final Ctas? ctas;

  @override
  String toString() =>
      'Failure{message: $message, errorCode: $errorCode, errorTitle: $errorTitle, errorMessage: $errorMessage, fieldErrors: $fieldErrors, ctas: $ctas}';

  String fieldErrorsToString() => (fieldErrors?.map((e) => e.message).toList() ?? []).join(', ');

  @override
  List<Object?> get props => [message, errorCode, errorTitle, errorMessage, fieldErrors, ctas];
}

class ServerFailure extends Failure {
  const ServerFailure({
    super.message,
    super.errorCode,
    super.errorTitle,
    super.errorMessage,
    super.fieldErrors,
    super.ctas,
  });
}

class UnKnownFailure extends Failure {
  const UnKnownFailure({
    super.message,
  });
}
