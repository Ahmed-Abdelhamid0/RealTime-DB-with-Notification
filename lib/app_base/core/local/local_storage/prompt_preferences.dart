
import 'package:equatable/equatable.dart';

import 'local_json_serializable.dart';

class AmountVisibilityPreferences extends Equatable implements JsonSerializable {
  const AmountVisibilityPreferences({required this.showHideBalancePrompt, required this.hideByDefault});

  factory AmountVisibilityPreferences.fromJson(Map<String, dynamic> json) => AmountVisibilityPreferences(
      showHideBalancePrompt: json['showHideBalancePrompt'] ?? true,
      hideByDefault: json['hideByDefault'] ?? true,
    );

  static const AmountVisibilityPreferences defaultValue = AmountVisibilityPreferences(
    showHideBalancePrompt: true,
    hideByDefault: true,
  );

  static const String key = 'prompt_preferences';

  final bool showHideBalancePrompt;
  final bool hideByDefault;

  @override
  Map<String, dynamic> toJson() => {
      'showHideBalancePrompt': showHideBalancePrompt,
      'hideByDefault': hideByDefault,
    };

  AmountVisibilityPreferences copyWith({bool? showHideBalancePrompt, bool? hideByDefault}) => AmountVisibilityPreferences(
      showHideBalancePrompt: showHideBalancePrompt ?? this.showHideBalancePrompt,
      hideByDefault: hideByDefault ?? this.hideByDefault,
    );

  @override
  String toString() => 'AmountVisibilityPreferences(showHideBalancePrompt: $showHideBalancePrompt, hideByDefault: $hideByDefault)';

  @override
  List<Object?> get props => [showHideBalancePrompt, hideByDefault];
}
