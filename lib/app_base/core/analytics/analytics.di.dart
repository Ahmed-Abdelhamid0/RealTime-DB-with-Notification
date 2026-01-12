import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:realtime_ex/app_base/core/analytics/analytics.dart';
import 'package:realtime_ex/app_base/core/analytics/domain/usecase/log_analytics_event_usecase.dart';
import 'package:realtime_ex/app_base/core/dependency_injection/di.dart';
import 'package:realtime_ex/app_base/core/device/device_info.dart';


abstract class AnalyticsDI {
  static void init() {
    sl.registerLazySingleton<AnalyticsService>(
      () => AnalyticServiceImp(
        analytics: sl<FirebaseAnalytics>(),
        deviceAnalyticsParams: sl<AppDeviceInfo>().deviceAnalyticsParams,
      ),
    );

    sl.registerLazySingleton<LogAnalyticsEventUseCase>(
      () => LogAnalyticsEventUseCase(sl<AnalyticsService>()),
    );
  }
}
