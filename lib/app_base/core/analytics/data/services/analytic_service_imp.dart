part of '../../analytics.dart';

class AnalyticServiceImp extends AnalyticsService with AppSafeLogger {
  AnalyticServiceImp({
    required FirebaseAnalytics analytics,
    required Map<String, dynamic> deviceAnalyticsParams,
  })  : _analytics = analytics,
        _deviceAnalyticsParams = deviceAnalyticsParams;

  final FirebaseAnalytics _analytics;
  final Map<String, dynamic> _deviceAnalyticsParams;

  @override
  Future<void> init() async => _analytics.setAnalyticsCollectionEnabled(true);

  @override
  Future<void> sendEvent({
    required AnalyticsEventCode event,
    Map<String, dynamic>? params,
  }) async {
    try {
      final parameters = <String, Object>{
        ..._getBaseParams(),
        ...?params,
      };

      safeLogInfo('Analytics ::: name : ${event.code}, param: $parameters}');

      await _analytics.logEvent(
        name: event.code,
        parameters: parameters,
      );
    } catch (e) {
      safeLogError(e);
    }
  }

  Map<String, dynamic> _getBaseParams({String? location}) => {
        ..._deviceAnalyticsParams,
        AnalyticsParamsKeys.timestamp: DateTime.now().toTransactionDateWithTime,
        if (location != null) AnalyticsParamsKeys.location: location,
      };

  @override
  Future<void> logScreenView({required String screenName, String? screenClass, Map<String, dynamic>? params}) async {
    try {
      final parameters = <String, Object>{
        ..._getBaseParams(),
        ...?params,
      };

      safeLogInfo('Analytics ::: Screen : $screenName, param: $parameters}');

      await _analytics.logScreenView(
        screenName: screenName,
        parameters: parameters,
        screenClass: screenClass,
      );
    } catch (e) {
      safeLogError(e);
    }
  }

  @override
  Future<void> logButtonClick({
    required AnalyticsButtonAction buttonAction,
    Map<String, Object>? additionalParams,
  }) async {
    try {
      final parameters = <String, Object>{
        ..._getBaseParams(),
        ...?additionalParams,
        AnalyticsParamsKeys.paramButtonName: buttonAction.buttonName,
        AnalyticsParamsKeys.paramScreenName: buttonAction.screenName,
      };

      safeLogInfo('Analytics Button Action ::: name : ${buttonAction.buttonName}, param: $parameters}');

      await _analytics.logEvent(
        name: buttonAction.buttonEvent.orEmpty,
        parameters: parameters,
      );
    } catch (e) {
      safeLogError(e);
    }
  }
}
