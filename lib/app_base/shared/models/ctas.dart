import 'package:equatable/equatable.dart';

class Ctas extends Equatable {
  const Ctas({this.primaryButton, this.secondaryButton});
  factory Ctas.fromJson(Map<dynamic, dynamic> json) =>
      Ctas(primaryButton: json['primaryButton'] as String?, secondaryButton: json['secondaryButton'] as String?);

  final String? primaryButton;
  final String? secondaryButton;

  Map<String, dynamic> toJson() => {
        'primaryButton': primaryButton,
        'secondaryButton': secondaryButton,
      };

  @override
  List<Object?> get props => [primaryButton, secondaryButton];
}
