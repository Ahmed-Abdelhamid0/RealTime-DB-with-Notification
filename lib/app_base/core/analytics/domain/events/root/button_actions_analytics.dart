
import 'package:realtime_ex/app_base/core/analytics/analytics.dart';

enum ButtonActionsAnalytics implements AnalyticsButtonAction {
  login('login_submit', 'Login Screen');

  const ButtonActionsAnalytics(this.buttonName, this.screenName);

  @override
  String get buttonEvent => 'button_click';

  @override
  final String buttonName;

  @override
  final String screenName;
}
