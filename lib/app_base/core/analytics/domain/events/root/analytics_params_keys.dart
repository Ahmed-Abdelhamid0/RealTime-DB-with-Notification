part of '../../../analytics.dart';

class AnalyticsParamsKeys {
  const AnalyticsParamsKeys._();

  static const AnalyticsParamsKeys instance = AnalyticsParamsKeys._();

  // Analytics Params Keys
  static const appVersion = 'app_version';
  static const deviceId = 'device_id';
  static const deviceIp = 'device_ip';
  static const deviceVersion = 'device_version';
  static const channel = 'channel';
  static const operatingSystem = 'operating_system';
  static const operatingSystemVersion = 'operating_system_version';
  static const location = 'location';
  static const timestamp = 'execution_timestamp';
  static const screenName = 'screen_name';

  static const debitedAccountEntered = 'debited_account_entered';
  static const creditedAccountEntered = 'credited_account_entered';
  static const creditedCardNumberEntered = 'credited_card_number_entered';
  static const debitedAmountEntered = 'debited_amount_entered';
  static const notes = 'notes';

  static const String paramButtonName = 'button_name';
  static const String paramScreenName = 'screen_name';

  /// Auth
  static const loginTimeStamp = 'login_timestamp';
  static const userId = 'user_id';
  static const loginStatus = 'login_status';
  static const failureReason = 'failure_reason';
  static const noOfFailures = 'number_of_failed_attempts';
  static const registrationTimeStamp = 'registration_timestamp';
  static const statusOfAgreement = 'status_of_agreement';
  static const statusOfAuthentication = 'status_of_authentication';
  static const statusOfActivationProcess = 'status_of_activation_process ';
  static const biometricStatus = 'biometric_status';
  static const biometricScanTypeDisplayed = 'displayed';
  static const biometricScanStatus = 'biometric_scan_status';
  static const noOfInvalidAttempts = 'no_of_invalid_attempts';
  static const errorCode = 'error_code';
  static const otpRequestId = 'otp_request_id';
  static const requestId = 'request_id';
  static const changeStatus = 'change_status';
  static const resetStatus = 'reset_status';
  static const logoutStatus = 'logout_status';
  static const branchesAtmListRetrieved = 'branches_ATM_list_retrieved';
  static const locationOnMapRetried = 'location_on_map_retrieved';
  static const locationStatus = 'location_status';
  static const String errorCodeGeneric = 'error_generic';



}
