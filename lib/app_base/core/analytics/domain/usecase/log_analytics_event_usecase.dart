
import 'package:realtime_ex/app_base/core/analytics/analytics.dart';

class LogAnalyticsEventUseCase {
  const LogAnalyticsEventUseCase(this._analytics);
  final AnalyticsService _analytics;

  Future<void> call({required AnalyticsEventCode event, Map<String, dynamic>? params}) async =>
      _analytics.sendEvent(event: event, params: params);
}
