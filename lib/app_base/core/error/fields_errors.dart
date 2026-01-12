
import 'package:equatable/equatable.dart';
import 'package:realtime_ex/app_base/core/utils/common_utils/common_utils.dart';

class FieldErrors extends Equatable {
  const FieldErrors({
    this.errorCode,
    this.field,
    this.message,
    this.rejectedValue,
  });

  factory FieldErrors.fromJson(Map<String, dynamic> json) => FieldErrors(
        errorCode: json['errorCode'] as String?,
        field: json['field'] as String?,
        message: json['message'] as String?,
        rejectedValue: makeString(json['rejectedValue']),
      );
  final String? errorCode;
  final String? field;
  final String? message;
  final String? rejectedValue;

  Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'field': field,
        'message': message,
        'rejectedValue': rejectedValue,
      };

  @override
  List<Object?> get props => [errorCode, field, message, rejectedValue];
}
