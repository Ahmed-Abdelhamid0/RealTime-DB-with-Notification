import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:realtime_ex/app_base/shared/constants/analytics_constants/analytics_constants.dart';


/// Service class to handle all analytics events across the app
@Deprecated('Use AnalyticsService from analytics.dart instead')
class AnalyticsServiceOld {
  AnalyticsServiceOld(this._analytics);
  final FirebaseAnalytics _analytics;

  /// Log app launch
  Future<void> logAppLaunch() async {
    await logEvent(name: AnalyticsConstants.appLaunch);
  }

  /// Log when user enters a new screen
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) async {
    await _analytics.logScreenView(
      screenName: screenName,
      screenClass: screenClass ?? screenName,
    );
  }

  /// Log button click or tap interaction
  Future<void> logButtonClick({
    required String buttonName,
    required String screenName,
    Map<String, Object>? additionalParams,
  }) async {
    await logEvent(
      name: AnalyticsConstants.buttonClick,
      parameters: {
        AnalyticsConstants.paramButtonName: buttonName,
        AnalyticsConstants.paramScreenName: screenName,
        if (additionalParams != null) ...additionalParams,
      },
    );
  }

  /// Log authentication events
  Future<void> logAuthEvent({
    required String action,
    String? method,
    String? errorCode,
  }) async {
    await logEvent(
      name: AnalyticsConstants.authEvent,
      parameters: {
        AnalyticsConstants.paramAction: action,
        if (method != null) AnalyticsConstants.paramMethod: method,
        if (errorCode != null) AnalyticsConstants.paramErrorCode: errorCode,
      },
    );
  }

  /// Log a custom event with optional parameters
  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    await _analytics.logEvent(
      name: name,
      parameters: parameters,
    );
  }

  /// Log when user performs an action that could be considered as engagement
  Future<void> logUserEngagement({
    required String action,
    Map<String, Object>? additionalParams,
  }) async {
    await logEvent(
      name: AnalyticsConstants.userEngagement,
      parameters: {
        AnalyticsConstants.paramAction: action,
        if (additionalParams != null) ...additionalParams,
      },
    );
  }

  /// Enable analytics collection
  Future<void> setAnalyticsCollectionEnabled({required bool enabled}) async {
    await _analytics.setAnalyticsCollectionEnabled(enabled);
  }
}
