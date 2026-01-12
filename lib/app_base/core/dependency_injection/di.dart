
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:get_it/get_it.dart';
import 'package:realtime_ex/app_base/core/analytics/analytics_service.dart';
import 'package:realtime_ex/app_base/core/crashlytics/firebase_crashlytics_manager.dart';
import 'package:realtime_ex/app_base/core/dependency_injection/di.dart' as AnalyticsDI;
import 'package:realtime_ex/app_base/core/device/device_info.dart';
import 'package:realtime_ex/app_base/core/device/device_info_impl.dart';
import 'package:realtime_ex/app_base/core/flavors/environment_utils.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/scb_bio_secure_local_storage.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/scb_local_storage.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/scb_local_storage_flutter_secure_storage_impl.dart';
import 'package:realtime_ex/app_base/core/local/localization/localization_services.dart';
import 'package:realtime_ex/app_base/core/performance/firebase_performance_interceptor.dart';
import 'package:realtime_ex/app_base/core/performance/firebase_performance_manager.dart';


final sl = GetIt.instance;

Future<void> init() async {
  // Register Connectivity Cubit
  // sl.registerLazySingleton<ConnectivityCubit>(ConnectivityCubit.new);
  // sl.registerLazySingleton(LocalizationService.new);
  // // Register LocalizationUtils
  // sl.registerLazySingleton<LocalizationUtils>(() => LocalizationUtils(sl()));
  // // Register LocaleCubit
  // sl.registerFactory(() => LocaleCubit(localizationUtils: sl<LocalizationUtils>()));
  // sl.registerLazySingleton(SSlVerificationServices.new);
  // // Register ChuckerDioInterceptor if you're using it
  // sl.registerLazySingleton<ChuckerDioInterceptor>(ChuckerDioInterceptor.new);
  // Register SessionManager


  // Device Info
  final deviceInfo = AppDeviceInfoImpl();
  await deviceInfo.init();
  sl.registerLazySingleton<AppDeviceInfo>(() => deviceInfo);

  // Amount Visibility
  // sl.registerLazySingleton(() => AmountVisibilityNotifier(sl(), sl()));

  AnalyticsDI.init();

  // Register RemoteApiService
  // sl.registerLazySingleton<RemoteApiService>(
  //   () => RemoteApiService(
  //     baseUrl: Environment.baseUrl,
  //     connectivityCubit: sl<ConnectivityCubit>(),
  //     localizationServices: sl<LocalizationService>(),
  //     sslCertificateServices: sl<SSlVerificationServices>(),
  //     sessionManager: sl<SessionManager>(),
  //     chuckerDioInterceptor: sl<ChuckerDioInterceptor>(),
  //     sessionInterceptor: sl(),
  //     deviceInfo: sl(),
  //     firebasePerformanceInterceptor: sl<FirebasePerformanceInterceptor>(),
  //   ),
  // );
  // Register ApiService based on environment
  // sl.registerLazySingleton<ApiService>(
  //   () => ApiServiceFactory.createApiService(
  //     connectivityCubit: sl<ConnectivityCubit>(),
  //     localizationService: sl<LocalizationService>(),
  //     sslCertificateManager: sl<SSlVerificationServices>(),
  //     sessionManager: sl<SessionManager>(),
  //     sessionInterceptor: sl(),
  //     deviceInfo: sl(),
  //     firebasePerformanceInterceptor: sl<FirebasePerformanceInterceptor>(),
  //   ),
  // );

  // Register ShareService
  // sl.registerLazySingleton(ShareService.new);

  // sl.registerFactory(FileManager.new);

  // sl.registerFactory(ResultGuard.new);

  // initDeviceIntegrityModule();

  // Register Analytics Services
  sl.registerLazySingleton<FirebaseAnalytics>(
    () => FirebaseAnalytics.instance,
  );
  sl.registerLazySingleton<AnalyticsServiceOld>(
    () => AnalyticsServiceOld(sl<FirebaseAnalytics>()),
  );
  sl.registerLazySingleton<FirebasePerformance>(
    () => FirebasePerformance.instance,
  );
  sl.registerLazySingleton<FirebasePerformanceManager>(
    () => FirebasePerformanceManager(sl<FirebasePerformance>()),
  );
  sl.registerLazySingleton<FirebasePerformanceInterceptor>(
    () => FirebasePerformanceInterceptor(sl<FirebasePerformance>()),
  );
  sl.registerLazySingleton<FirebaseCrashlytics>(
    () => FirebaseCrashlytics.instance,
  );
  sl.registerLazySingleton<FirebaseCrashlyticsManager>(
    () => FirebaseCrashlyticsManager(sl<FirebaseCrashlytics>()),
  );


  // Register splash cubit
  // sl.registerFactory(() => SplashCubit(sl(), sl(), sl()));




  // Initialize Firebase Performance
  await sl<FirebasePerformanceManager>().initialize();

  // Initialize Firebase Crashlytics
  await sl<FirebaseCrashlyticsManager>().initialize();







  // Register notification helper
  // sl.registerLazySingleton(
  //   () => FirebaseNotificationHelper(
  //     firebaseMessaging: FirebaseMessaging.instance,
  //     flutterLocalNotificationsPlugin: FlutterLocalNotificationsPlugin(),
  //     appRouter: AppRouter(),
  //   ),
  // );

  // Register and create AppVersionChecker
  // sl.registerLazySingleton<AppVersionChecker>(
  //   () => AppVersionChecker(remoteConfig: FirebaseRemoteConfig.instance),
  // );

  // sl.registerFactory<FlutterNativeContactPicker>(
  //   FlutterNativeContactPicker.new,
  // );
  // sl.registerFactory<ContactPicker>(
  //   () => ContactPicker(contactPicker: sl<FlutterNativeContactPicker>()),
  // );

  // Dialogs
  // sl.registerFactory(() => TermsAndConditionsDialogCubit(getTermsAndConditionsUseCase: sl()));
  // sl.registerFactory(() => SoftTokenDialogCubit(validateSoftTokenUseCase: sl()));
  // sl.registerFactory(() => OtpDialogCubit(generateOtpUseCase: sl(), validateOtpUseCase: sl(), deviceIdManager: sl()));

  // // Register and create AppUpdateCubit
  // sl.registerLazySingleton(() => AppUpdateCubit(appVersionChecker: sl<AppVersionChecker>()));

  // // Register and create BiometricCubit
  // sl.registerLazySingleton(
  //   () => BiometricCubit(
  //     activateBiometricUseCase: sl(),
  //     deactivateBiometricUseCase: sl(),
  //     isBiometricEnabledUseCase: sl(),
  //     deviceIdManager: sl(),
  //     logAnalyticsEventUseCase: sl(),
  //     biometricPrefsUseCase: sl(),
  //   ),
  // );

  // // Data dependencies
  // await initDataDI();

  // // Domain dependencies
  // await initDomainDI();

  // await initPresentationDI();
}
