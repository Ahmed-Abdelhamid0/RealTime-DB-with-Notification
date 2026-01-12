
import 'package:realtime_ex/app_base/core/utils/string_util.dart';

/// Constants for analytics events and parameters
class AnalyticsConstants {
  // Event Names
  static const String appLaunch = 'app_launch';
  static const String buttonClick = 'button_click';
  static const String authEvent = 'auth_event';
  static const String userEngagement = 'user_engagement_';
  static const String splashError = 'splash_error';

  // Screen Names
  static const String screenSplash = 'splash';
  static const String screenLogin = 'login';
  static const String screenOtpVerification = 'otp_verification';
  static const String screenRegisterNewUser = 'register';
  static const String successRegister = 'success_register';
  static const String screenDashboard = 'dashboard';
  static const String screenTransfer = 'transfer';
  static const String cardDetails = 'card_details';
  static const String cardSettlement = 'card_settlement';

  // Button Names
  static const String buttonLoginSubmit = 'login_submit';
  static const String buttonForgotPassword = 'forgot_password';
  static const String buttonLanguageChange = 'language_change';
  static const String buttonOtpHelp = 'help';
  static const String buttonOtpResendCode = 'resend_code';
  static const String buttonRegisterSuccessDone = 'success_register_done';
  static const String buttonViewAllTransactions = 'view_all_transactions';

  // Auth Actions
  static const String actionLoginAttempt = 'login_attempt';
  static const String actionLoginError = 'login_error';
  static const String actionLoginSuccess = 'login_success';
  static const String actionOtpVerificationSuccess = 'otp_verification_success';
  static const String actionOtpMaxAttemptsExceeded =
      'otp_max_attempts_exceeded';
  static const String actionOtpVerificationError = 'otp_verification_error';
  static const String actionOtpResendRequested = 'otp_resend_requested';

  // Auth Methods
  static const String methodManual = 'manual';
  static const String methodOtp = 'otp';

  // Parameter Keys
  static const String paramButtonName = 'button_name';
  static const String paramScreenName = 'screen_name';
  static const String paramLanguage = 'language';
  static const String paramAction = 'action';
  static const String paramMethod = 'method';
  static const String paramErrorCode = 'error_code';
  static const String paramAttemptCount = 'attempt_count';

  // Error Codes
  static const String errorCodeInvalidCredentials = 'auth_invalid_credentials';
  static const String errorCodeInvalidOtp = 'auth_invalid_otp';
  static const String errorCodeMaxAttempts = 'auth_max_attempts';
  static const String errorCodeGeneric = 'error_generic';

  // Language Values
  static const String languageArabic = 'ar';
  static const String languageEnglish = 'en';

  // Misc
  static String pageName(String page) => '${page.asRouteName} Page';
  static String actionName(String button) => '$button Button';
}
