class Environment {
  static EnvironmentType get _type => EnvironmentType.fromString(const String.fromEnvironment('ENVIRONMENT'));
  static String get baseUrl => const String.fromEnvironment('BASE_URL');
  static String get shakeAndroidApiKey => const String.fromEnvironment('SHAKE_ANDROID_API_KEY');
  static String get shakeIosApiKey => const String.fromEnvironment('SHAKE_IOS_API_KEY');
  static String get deviceIdPadding => const String.fromEnvironment('DEVICE_ID_PADDING');
  static String get staticResourceBaseUrl => const String.fromEnvironment('STATIC_RESOURCE_BASE_URL');
  static String get apiUsername => const String.fromEnvironment('API_USERNAME');
  static String get apiPassword => const String.fromEnvironment('API_PASSWORD');

  static bool get isMock => _type.isMock;
  static bool get isProd => _type.isProd;
  static bool get isStag => _type.isStag;
  static bool get isDev => _type.isDev;
  static bool get isUat => _type.isUat;
  static bool get checkDeviceIntegrity => false;
  static bool get showSessionStatusOverLay => true && isStag;
  static bool get isFirebasePerformanceEnabled => isProd;
  static bool get isCrashlyticsEnabled => true;
  static bool get isCalendarEnabled => !isProd;
  static bool get isTdEnabled => false;
  static bool get disableShakeToNavigate => false;
  static bool get isLoansEnabled => false;
  static bool get isLoansPaymentsEnabled => false;
  static bool get isOffersDetailsEnabled => true;
}

enum EnvironmentType {
  dev('dev'),
  stag('stag'),
  prod('prod'),
  uat('uat'),
  mock('mock');

  const EnvironmentType(this.name);

  final String name;

  static EnvironmentType fromString(String name) => values.firstWhere(
        (e) => e.name == name,
        orElse: () => EnvironmentType.mock,
      );

  bool get isMock => this == EnvironmentType.mock;

  bool get isProd => this == EnvironmentType.prod;

  bool get isStag => this == EnvironmentType.stag;

  bool get isDev => this == EnvironmentType.dev;

  bool get isUat => this == EnvironmentType.uat;
}
