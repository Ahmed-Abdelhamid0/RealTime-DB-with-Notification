
import 'package:realtime_ex/app_base/core/analytics/analytics.dart';

enum AuthAnalyticsEvents implements AnalyticsEventCode {
  /// Manual logins
  successfulLogin('successful_login'),
  failedLogin('failed_login '),

  /// Register by cif
  successfulSelfRegistration('successful_self_registration '),
  failureSelfRegistration('failure_self_registration'),
  inCompleteSelfRegistration('incomplete_self-registration'),

  /// Biometric activation
  initiateActivationProcess('initiate_activation_process'),
  termsAndConditionsAgreement('T&C_agreement'),
  authenticationWithSoftToken('Authentication with soft token'),
  completedActivationProcess('Completing activation process'),
  appLaunch('app_launch'),
  biometricScanSubmissionAfterLaunchingApp('Biometric_scan_submission_after_launching_the_app'),
  /// Password reset
  accessResetPasswordScreen('access_reset_password_screen'),
  accessSettingNewPasswordScreen('access_setting_new_password_screen'),
  accessChangePasswordScreen('access_change_password_screen'),
  submissionForResetPassword('submission_for_reset_password'),
  resetStatus('reset_status'),
  changeStatus('change_status'),
  exitingTheFlowBeforeReset('exiting_the_flow_before_reset'),
  exitingTheFlowBeforeChange('exiting_the_flow_before_change'),
  /// logout
  successfulLogout('successful_logout'),
  failedLogout('successful_logout'),

  viewNearestAtmAndBranches('view_nearest_branch_ATM'),
  locationDetection('location_detection'),
  splashError('splash_error');

  const AuthAnalyticsEvents(this.code);

  @override
  final String code;
}
