part of '../../analytics.dart';

abstract class AnalyticsEventCode {
  const AnalyticsEventCode({required this.code});
  final String code;
}

abstract class AnalyticsButtonAction {
  const AnalyticsButtonAction({required this.buttonName, required this.screenName, this.buttonEvent });
  final String buttonName;
  final String screenName;
  final String? buttonEvent;
}
