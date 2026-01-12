part of '../../analytics.dart';

abstract class AnalyticsService {
  Future<void> init();
  Future<void> sendEvent({
    required AnalyticsEventCode event,
    Map<String, dynamic>? params,
  });
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  });

  Future<void> logButtonClick({
    required AnalyticsButtonAction buttonAction,
    Map<String, Object>? additionalParams,
  });
}
