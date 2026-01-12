import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar')
  ];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'Suez Canal Bank'**
  String get app_name;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @check_internet_connection.
  ///
  /// In en, this message translates to:
  /// **'kindly check your network setting'**
  String get check_internet_connection;

  /// No description provided for @no_internet.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get no_internet;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get language;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get user_name;

  /// No description provided for @welcome_to.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get welcome_to;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password;

  /// No description provided for @forgot_password_title.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgot_password_title;

  /// No description provided for @log_in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get log_in;

  /// No description provided for @user_name_required.
  ///
  /// In en, this message translates to:
  /// **'Username is required'**
  String get user_name_required;

  /// No description provided for @user_name_must_be.
  ///
  /// In en, this message translates to:
  /// **'username must be of 8 to 20 characters.'**
  String get user_name_must_be;

  /// No description provided for @password_required.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get password_required;

  /// No description provided for @account_locked.
  ///
  /// In en, this message translates to:
  /// **'Account locked'**
  String get account_locked;

  /// No description provided for @account_locked_content.
  ///
  /// In en, this message translates to:
  /// **'You\'ve exceeded the maximum number of login attempts. For your security, your account has been locked. Please reset your password'**
  String get account_locked_content;

  /// No description provided for @unlock_account.
  ///
  /// In en, this message translates to:
  /// **'Unlock account'**
  String get unlock_account;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get reset_password;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @password_expired.
  ///
  /// In en, this message translates to:
  /// **'Password expired'**
  String get password_expired;

  /// No description provided for @password_expired_content.
  ///
  /// In en, this message translates to:
  /// **'Your password has expired. Please reset it to continue accessing your account'**
  String get password_expired_content;

  /// No description provided for @update_password.
  ///
  /// In en, this message translates to:
  /// **'Update Password'**
  String get update_password;

  /// No description provided for @already_logged_in.
  ///
  /// In en, this message translates to:
  /// **'Already Logged In'**
  String get already_logged_in;

  /// No description provided for @already_logged_in_content.
  ///
  /// In en, this message translates to:
  /// **'You\'re currently signed in on another device. To continue here, we\'ll log you out from the other'**
  String get already_logged_in_content;

  /// No description provided for @continue_button.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_button;

  /// No description provided for @invalid_username.
  ///
  /// In en, this message translates to:
  /// **'Invalid username or password'**
  String get invalid_username;

  /// No description provided for @invalid_username_content.
  ///
  /// In en, this message translates to:
  /// **'Please check your login details and try again.'**
  String get invalid_username_content;

  /// No description provided for @inactive_user.
  ///
  /// In en, this message translates to:
  /// **'User inactive'**
  String get inactive_user;

  /// No description provided for @inactive_user_content.
  ///
  /// In en, this message translates to:
  /// **'This registered user hasn\'t been active for a while.'**
  String get inactive_user_content;

  /// No description provided for @activate.
  ///
  /// In en, this message translates to:
  /// **'Activate'**
  String get activate;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @page_not_found.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get page_not_found;

  /// No description provided for @login_failed.
  ///
  /// In en, this message translates to:
  /// **'Login failed'**
  String get login_failed;

  /// No description provided for @invalid_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP, please click on resend code'**
  String get invalid_code;

  /// No description provided for @attempts_left.
  ///
  /// In en, this message translates to:
  /// **'{count} attempts left'**
  String attempts_left(int count);

  /// No description provided for @max_attempts_exceeded.
  ///
  /// In en, this message translates to:
  /// **'You have exceeded the maximum number of invalid OTP attempts. Please, contact the bank for further assistant'**
  String get max_attempts_exceeded;

  /// No description provided for @resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resend_code;

  /// No description provided for @resend_code_timer.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s'**
  String resend_code_timer(int seconds);

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @help_soft_token.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help_soft_token;

  /// No description provided for @verification.
  ///
  /// In en, this message translates to:
  /// **'Verification'**
  String get verification;

  /// No description provided for @otp_sent_message.
  ///
  /// In en, this message translates to:
  /// **'OTP code sent to your registered mobile number.'**
  String get otp_sent_message;

  /// No description provided for @sorry.
  ///
  /// In en, this message translates to:
  /// **'Sorry!'**
  String get sorry;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @confirm_new_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get confirm_new_password;

  /// No description provided for @register_new_user_header.
  ///
  /// In en, this message translates to:
  /// **'Enter unique username and password. keep them confidential. you will need them for future logins.'**
  String get register_new_user_header;

  /// No description provided for @validation_length_characters.
  ///
  /// In en, this message translates to:
  /// **'8 - 64 characters'**
  String get validation_length_characters;

  /// No description provided for @validation_number.
  ///
  /// In en, this message translates to:
  /// **'At least 1 number'**
  String get validation_number;

  /// No description provided for @validation_upper_lower.
  ///
  /// In en, this message translates to:
  /// **'At least 1 upper and lowercase character'**
  String get validation_upper_lower;

  /// No description provided for @validation_special_character.
  ///
  /// In en, this message translates to:
  /// **'At least 1 special character'**
  String get validation_special_character;

  /// No description provided for @password_should_contains.
  ///
  /// In en, this message translates to:
  /// **'Password should contains the following:'**
  String get password_should_contains;

  /// No description provided for @strong.
  ///
  /// In en, this message translates to:
  /// **'Strong'**
  String get strong;

  /// No description provided for @weak.
  ///
  /// In en, this message translates to:
  /// **'Weak'**
  String get weak;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @confirm_password_required.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password is required'**
  String get confirm_password_required;

  /// No description provided for @confirm_password_match_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password not match password'**
  String get confirm_password_match_password;

  /// No description provided for @password_not_valid.
  ///
  /// In en, this message translates to:
  /// **'Password is invalid'**
  String get password_not_valid;

  /// No description provided for @banking_made_easy.
  ///
  /// In en, this message translates to:
  /// **'Banking Made Easy – Start Your Journey Now!'**
  String get banking_made_easy;

  /// No description provided for @select_registration_method.
  ///
  /// In en, this message translates to:
  /// **'Select a Registration Method to Get Started.'**
  String get select_registration_method;

  /// No description provided for @cif_number.
  ///
  /// In en, this message translates to:
  /// **'CIF number'**
  String get cif_number;

  /// No description provided for @account_number.
  ///
  /// In en, this message translates to:
  /// **'Account number'**
  String get account_number;

  /// No description provided for @account_number_iban.
  ///
  /// In en, this message translates to:
  /// **'Account number/IBAN'**
  String get account_number_iban;

  /// No description provided for @card_number.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get card_number;

  /// No description provided for @enter_cif_info.
  ///
  /// In en, this message translates to:
  /// **'Enter this information to verify your account.'**
  String get enter_cif_info;

  /// No description provided for @cif_number_hint.
  ///
  /// In en, this message translates to:
  /// **'You can find your customer information file number \n(CIF) in your bank statements or by contacting \ncustomer support.'**
  String get cif_number_hint;

  /// No description provided for @national_id_number.
  ///
  /// In en, this message translates to:
  /// **'National ID / Passport number'**
  String get national_id_number;

  /// No description provided for @cif_number_required.
  ///
  /// In en, this message translates to:
  /// **'CIF number required'**
  String get cif_number_required;

  /// No description provided for @card_number_required.
  ///
  /// In en, this message translates to:
  /// **'Card number required'**
  String get card_number_required;

  /// No description provided for @account_number_required.
  ///
  /// In en, this message translates to:
  /// **'Account number required'**
  String get account_number_required;

  /// No description provided for @national_id_required.
  ///
  /// In en, this message translates to:
  /// **'National id / passport number required'**
  String get national_id_required;

  /// No description provided for @contact_bank.
  ///
  /// In en, this message translates to:
  /// **'Contact Bank'**
  String get contact_bank;

  /// No description provided for @register_new_user.
  ///
  /// In en, this message translates to:
  /// **'Register new user'**
  String get register_new_user;

  /// No description provided for @terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get terms_and_conditions;

  /// No description provided for @terms_and_conditions_description.
  ///
  /// In en, this message translates to:
  /// **'Please read & accept the terms and conditions to continue registration.'**
  String get terms_and_conditions_description;

  /// No description provided for @i_have_read_and_agree.
  ///
  /// In en, this message translates to:
  /// **'I have read and agree to terms & conditions'**
  String get i_have_read_and_agree;

  /// No description provided for @terms_and_conditions_agreement.
  ///
  /// In en, this message translates to:
  /// **'I have read and agree to '**
  String get terms_and_conditions_agreement;

  /// No description provided for @failed_to_load_terms.
  ///
  /// In en, this message translates to:
  /// **'Failed to load terms'**
  String get failed_to_load_terms;

  /// No description provided for @new_user.
  ///
  /// In en, this message translates to:
  /// **'New user?'**
  String get new_user;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @terms_agreement_required.
  ///
  /// In en, this message translates to:
  /// **'You need to agree to the terms and conditions to continue.'**
  String get terms_agreement_required;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @update_now.
  ///
  /// In en, this message translates to:
  /// **'Update Now'**
  String get update_now;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// No description provided for @retry_otp_layer.
  ///
  /// In en, this message translates to:
  /// **'You have recently resend the OTP, Please retry after 88 seconds'**
  String get retry_otp_layer;

  /// No description provided for @attention.
  ///
  /// In en, this message translates to:
  /// **'Attention!'**
  String get attention;

  /// No description provided for @undergoing_maintenance.
  ///
  /// In en, this message translates to:
  /// **'We are currently undergoing maintenance.'**
  String get undergoing_maintenance;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @success_activation_message_title.
  ///
  /// In en, this message translates to:
  /// **'Activation Completed!'**
  String get success_activation_message_title;

  /// No description provided for @success_register_message_title.
  ///
  /// In en, this message translates to:
  /// **'Registration Completed!'**
  String get success_register_message_title;

  /// No description provided for @success_register_message_body.
  ///
  /// In en, this message translates to:
  /// **'Your account is set up. Access your banking services securely anytime.'**
  String get success_register_message_body;

  /// No description provided for @our_service_will_be_back_up.
  ///
  /// In en, this message translates to:
  /// **'Our service will be back up and running soon!'**
  String get our_service_will_be_back_up;

  /// No description provided for @confirm_exit.
  ///
  /// In en, this message translates to:
  /// **'Confirm Exit'**
  String get confirm_exit;

  /// No description provided for @exit_message.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to exit the app?'**
  String get exit_message;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @card_pin_hint.
  ///
  /// In en, this message translates to:
  /// **'It is the card’s 4-digit code entered over the atm'**
  String get card_pin_hint;

  /// No description provided for @card_pin.
  ///
  /// In en, this message translates to:
  /// **'Card PIN'**
  String get card_pin;

  /// No description provided for @card_pin_required.
  ///
  /// In en, this message translates to:
  /// **'Card Pin Required'**
  String get card_pin_required;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @cards.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get cards;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @please_sign_in_first.
  ///
  /// In en, this message translates to:
  /// **'Please sign in first to use biometrics.'**
  String get please_sign_in_first;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @hi.
  ///
  /// In en, this message translates to:
  /// **'Hi,'**
  String get hi;

  /// No description provided for @transfers.
  ///
  /// In en, this message translates to:
  /// **'Transfers'**
  String get transfers;

  /// No description provided for @pay_bills.
  ///
  /// In en, this message translates to:
  /// **'Pay Bills'**
  String get pay_bills;

  /// No description provided for @converter.
  ///
  /// In en, this message translates to:
  /// **'Converter'**
  String get converter;

  /// No description provided for @add_new.
  ///
  /// In en, this message translates to:
  /// **'Add new'**
  String get add_new;

  /// No description provided for @current_account.
  ///
  /// In en, this message translates to:
  /// **'Current Account'**
  String get current_account;

  /// No description provided for @current_accounts.
  ///
  /// In en, this message translates to:
  /// **'Current Accounts'**
  String get current_accounts;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// No description provided for @accounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// No description provided for @egp.
  ///
  /// In en, this message translates to:
  /// **'EGP'**
  String get egp;

  /// No description provided for @egp_en.
  ///
  /// In en, this message translates to:
  /// **'EGP'**
  String get egp_en;

  /// No description provided for @cd_and_td.
  ///
  /// In en, this message translates to:
  /// **'Certificates & Time deposits'**
  String get cd_and_td;

  /// No description provided for @cer_of_deposit.
  ///
  /// In en, this message translates to:
  /// **'Certificate of deposit'**
  String get cer_of_deposit;

  /// No description provided for @time_of_deposit.
  ///
  /// In en, this message translates to:
  /// **'Time of deposit'**
  String get time_of_deposit;

  /// No description provided for @weekend_saver.
  ///
  /// In en, this message translates to:
  /// **'Weekend Saver'**
  String get weekend_saver;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @loans_overdraft.
  ///
  /// In en, this message translates to:
  /// **'Loans & Overdraft'**
  String get loans_overdraft;

  /// No description provided for @next_due_date.
  ///
  /// In en, this message translates to:
  /// **'Next due date:'**
  String get next_due_date;

  /// No description provided for @available_limit.
  ///
  /// In en, this message translates to:
  /// **'Available limit'**
  String get available_limit;

  /// No description provided for @available_balance.
  ///
  /// In en, this message translates to:
  /// **'Available Balance'**
  String get available_balance;

  /// No description provided for @debit_card.
  ///
  /// In en, this message translates to:
  /// **'Debit card'**
  String get debit_card;

  /// No description provided for @credit_card.
  ///
  /// In en, this message translates to:
  /// **'Credit card'**
  String get credit_card;

  /// No description provided for @gold.
  ///
  /// In en, this message translates to:
  /// **'Gold'**
  String get gold;

  /// No description provided for @platinum.
  ///
  /// In en, this message translates to:
  /// **'Platinum'**
  String get platinum;

  /// No description provided for @view_all.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get view_all;

  /// No description provided for @loan_name.
  ///
  /// In en, this message translates to:
  /// **'Loan Name'**
  String get loan_name;

  /// No description provided for @next_due_amount.
  ///
  /// In en, this message translates to:
  /// **'Next due amount:'**
  String get next_due_amount;

  /// No description provided for @apply_for_new.
  ///
  /// In en, this message translates to:
  /// **'Apply for new'**
  String get apply_for_new;

  /// No description provided for @certificate_name.
  ///
  /// In en, this message translates to:
  /// **'Certificate Name'**
  String get certificate_name;

  /// No description provided for @open_new_account.
  ///
  /// In en, this message translates to:
  /// **'Open new account'**
  String get open_new_account;

  /// No description provided for @next_interest_amount.
  ///
  /// In en, this message translates to:
  /// **'Next interest amount:'**
  String get next_interest_amount;

  /// No description provided for @next_interest_date.
  ///
  /// In en, this message translates to:
  /// **'Next interest date:'**
  String get next_interest_date;

  /// No description provided for @total_balance.
  ///
  /// In en, this message translates to:
  /// **'Total Balance'**
  String get total_balance;

  /// No description provided for @transaction.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transaction;

  /// No description provided for @successful.
  ///
  /// In en, this message translates to:
  /// **'Successful'**
  String get successful;

  /// No description provided for @hot_deal.
  ///
  /// In en, this message translates to:
  /// **'Hot deal'**
  String get hot_deal;

  /// No description provided for @buy_one_desc.
  ///
  /// In en, this message translates to:
  /// **'Buy one get one 50%'**
  String get buy_one_desc;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get days;

  /// No description provided for @offers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offers;

  /// No description provided for @no_recent_transactions.
  ///
  /// In en, this message translates to:
  /// **'No recent transfer'**
  String get no_recent_transactions;

  /// No description provided for @could_not_load_transactions.
  ///
  /// In en, this message translates to:
  /// **'we couldn{shortcut}t load transfers list'**
  String could_not_load_transactions(Object shortcut);

  /// No description provided for @reload.
  ///
  /// In en, this message translates to:
  /// **'Reload'**
  String get reload;

  /// No description provided for @quick_actions.
  ///
  /// In en, this message translates to:
  /// **'Quick actions'**
  String get quick_actions;

  /// No description provided for @quick_actions_sub_title.
  ///
  /// In en, this message translates to:
  /// **'Customize your quick actions by removing or reordering items.'**
  String get quick_actions_sub_title;

  /// No description provided for @pay_credit.
  ///
  /// In en, this message translates to:
  /// **'Pay credit'**
  String get pay_credit;

  /// No description provided for @donate.
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get donate;

  /// No description provided for @exchange_rate.
  ///
  /// In en, this message translates to:
  /// **'Exchange rate:'**
  String get exchange_rate;

  /// No description provided for @open_td.
  ///
  /// In en, this message translates to:
  /// **'Open TD'**
  String get open_td;

  /// No description provided for @open_cd.
  ///
  /// In en, this message translates to:
  /// **'Open CD'**
  String get open_cd;

  /// No description provided for @open_account.
  ///
  /// In en, this message translates to:
  /// **'Open Account'**
  String get open_account;

  /// No description provided for @request_chequebook.
  ///
  /// In en, this message translates to:
  /// **'Request Chequebook'**
  String get request_chequebook;

  /// No description provided for @locate_us.
  ///
  /// In en, this message translates to:
  /// **'Locate Us'**
  String get locate_us;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong!'**
  String get something_went_wrong;

  /// No description provided for @add_new_section.
  ///
  /// In en, this message translates to:
  /// **'Add new sections'**
  String get add_new_section;

  /// No description provided for @edit_dashboard.
  ///
  /// In en, this message translates to:
  /// **'Edit dashboard'**
  String get edit_dashboard;

  /// No description provided for @edit_dashboard_header.
  ///
  /// In en, this message translates to:
  /// **'Customize your dashboard'**
  String get edit_dashboard_header;

  /// No description provided for @edit_dashboard_header_content.
  ///
  /// In en, this message translates to:
  /// **'Hold and drag to reorder sections or cards. Hide what you don’t need for a cleaner view.'**
  String get edit_dashboard_header_content;

  /// No description provided for @we_could_not_load_terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'we couldn’t load terms and conditions'**
  String get we_could_not_load_terms_and_conditions;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @beneficiaries.
  ///
  /// In en, this message translates to:
  /// **'Beneficiaries'**
  String get beneficiaries;

  /// No description provided for @soft_tokens.
  ///
  /// In en, this message translates to:
  /// **'Soft tokens'**
  String get soft_tokens;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @management.
  ///
  /// In en, this message translates to:
  /// **'Management'**
  String get management;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @activate_tokens.
  ///
  /// In en, this message translates to:
  /// **'Activate your token'**
  String get activate_tokens;

  /// No description provided for @welcome_to_online_transfer.
  ///
  /// In en, this message translates to:
  /// **'Welcome to our online transfer service, you can now transfer to any bank in Egypt. As using this service require the download of soft token via App store or play store'**
  String get welcome_to_online_transfer;

  /// No description provided for @to_download_the_app.
  ///
  /// In en, this message translates to:
  /// **'To download the App'**
  String get to_download_the_app;

  /// No description provided for @click_here.
  ///
  /// In en, this message translates to:
  /// **'Click here'**
  String get click_here;

  /// No description provided for @generate_my_token.
  ///
  /// In en, this message translates to:
  /// **'Generate my token'**
  String get generate_my_token;

  /// No description provided for @please_insert_activation.
  ///
  /// In en, this message translates to:
  /// **'Please insert Activation Code and serial Number in SCB Token Application at your mobile'**
  String get please_insert_activation;

  /// No description provided for @please_insert_generated_code.
  ///
  /// In en, this message translates to:
  /// **'Please insert the registration code generated from SCB Token'**
  String get please_insert_generated_code;

  /// No description provided for @serial_number.
  ///
  /// In en, this message translates to:
  /// **'Serial number'**
  String get serial_number;

  /// No description provided for @your_activation_code_is.
  ///
  /// In en, this message translates to:
  /// **'Activation code'**
  String get your_activation_code_is;

  /// No description provided for @enter_register_code.
  ///
  /// In en, this message translates to:
  /// **'Enter your Registration code'**
  String get enter_register_code;

  /// No description provided for @register_code.
  ///
  /// In en, this message translates to:
  /// **'Registration code'**
  String get register_code;

  /// No description provided for @success_register_tokens_content.
  ///
  /// In en, this message translates to:
  /// **'Your token is successfully activated. you can perform transaction now'**
  String get success_register_tokens_content;

  /// No description provided for @you_must_activate_soft_tokens.
  ///
  /// In en, this message translates to:
  /// **'You must activate soft tokens first to add beneficiary '**
  String get you_must_activate_soft_tokens;

  /// No description provided for @activate_soft_tokens.
  ///
  /// In en, this message translates to:
  /// **'Activate soft tokens'**
  String get activate_soft_tokens;

  /// No description provided for @soft_tokens_already_activated.
  ///
  /// In en, this message translates to:
  /// **'Soft tokens already activated'**
  String get soft_tokens_already_activated;

  /// No description provided for @manage_beneficiaries.
  ///
  /// In en, this message translates to:
  /// **'Manage Beneficiaries'**
  String get manage_beneficiaries;

  /// No description provided for @beneficiary_list.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary List'**
  String get beneficiary_list;

  /// No description provided for @currently_dn_have_any_beneficiary.
  ///
  /// In en, this message translates to:
  /// **'Currently you don’t have any beneficiary'**
  String get currently_dn_have_any_beneficiary;

  /// No description provided for @one_day_remaining.
  ///
  /// In en, this message translates to:
  /// **'{days} day left'**
  String one_day_remaining(Object days);

  /// No description provided for @days_remaining.
  ///
  /// In en, this message translates to:
  /// **'{days} days left'**
  String days_remaining(Object days);

  /// No description provided for @days_v2_remaining.
  ///
  /// In en, this message translates to:
  /// **'{days} days left'**
  String days_v2_remaining(Object days);

  /// No description provided for @expires_today.
  ///
  /// In en, this message translates to:
  /// **'Expires today'**
  String get expires_today;

  /// No description provided for @expired_days_ago.
  ///
  /// In en, this message translates to:
  /// **'Expired {days} days ago'**
  String expired_days_ago(Object days);

  /// No description provided for @no_recent_offer.
  ///
  /// In en, this message translates to:
  /// **'No recent offers yet'**
  String get no_recent_offer;

  /// No description provided for @could_not_load_offers.
  ///
  /// In en, this message translates to:
  /// **'we couldn’t load offers list'**
  String get could_not_load_offers;

  /// No description provided for @could_not_load_accounts.
  ///
  /// In en, this message translates to:
  /// **'we couldn’t load accounts list'**
  String get could_not_load_accounts;

  /// No description provided for @hide_section.
  ///
  /// In en, this message translates to:
  /// **'Hide section'**
  String get hide_section;

  /// No description provided for @hide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get hide;

  /// No description provided for @show_more_accounts.
  ///
  /// In en, this message translates to:
  /// **'Show more accounts'**
  String get show_more_accounts;

  /// No description provided for @show_more_loans.
  ///
  /// In en, this message translates to:
  /// **'Show more loans'**
  String get show_more_loans;

  /// No description provided for @show_more_deposits.
  ///
  /// In en, this message translates to:
  /// **'Show more deposits'**
  String get show_more_deposits;

  /// No description provided for @show_more_offers.
  ///
  /// In en, this message translates to:
  /// **'Show more offers'**
  String get show_more_offers;

  /// No description provided for @show_more_transactions.
  ///
  /// In en, this message translates to:
  /// **'Show more transactions'**
  String get show_more_transactions;

  /// No description provided for @show_more_cards.
  ///
  /// In en, this message translates to:
  /// **'Show more cards'**
  String get show_more_cards;

  /// No description provided for @own_accounts.
  ///
  /// In en, this message translates to:
  /// **'Own Accounts'**
  String get own_accounts;

  /// No description provided for @within_scb.
  ///
  /// In en, this message translates to:
  /// **'Within SCB'**
  String get within_scb;

  /// No description provided for @local.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get local;

  /// No description provided for @new_transfer.
  ///
  /// In en, this message translates to:
  /// **'New Transfer'**
  String get new_transfer;

  /// No description provided for @transfer_history.
  ///
  /// In en, this message translates to:
  /// **'Transfer History'**
  String get transfer_history;

  /// No description provided for @transfer_disclaimer.
  ///
  /// In en, this message translates to:
  /// **'Transfers submitted after 3:00 PM will be processed on the next business day.'**
  String get transfer_disclaimer;

  /// No description provided for @schedule_transactions.
  ///
  /// In en, this message translates to:
  /// **'Schedule Transactions'**
  String get schedule_transactions;

  /// No description provided for @top_pick_for_you.
  ///
  /// In en, this message translates to:
  /// **'Top Picks for You'**
  String get top_pick_for_you;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @view_more.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get view_more;

  /// No description provided for @view_less.
  ///
  /// In en, this message translates to:
  /// **'View less'**
  String get view_less;

  /// No description provided for @currently_you_dn_have_any_beneficiary.
  ///
  /// In en, this message translates to:
  /// **'Currently you don’t have any beneficiary'**
  String get currently_you_dn_have_any_beneficiary;

  /// No description provided for @could_not_load_beneficiaries.
  ///
  /// In en, this message translates to:
  /// **'we couldn{shortcut}t load beneficiaries list'**
  String could_not_load_beneficiaries(Object shortcut);

  /// No description provided for @edit_beneficiary.
  ///
  /// In en, this message translates to:
  /// **'Edit Beneficiary'**
  String get edit_beneficiary;

  /// No description provided for @save_updates.
  ///
  /// In en, this message translates to:
  /// **'Save Updates'**
  String get save_updates;

  /// No description provided for @delete_beneficiary.
  ///
  /// In en, this message translates to:
  /// **'Delete Beneficiary'**
  String get delete_beneficiary;

  /// No description provided for @beneficiary_nickname.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary Nickname'**
  String get beneficiary_nickname;

  /// No description provided for @bank_name.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bank_name;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @confirm_deletion.
  ///
  /// In en, this message translates to:
  /// **'Confirm Deletion'**
  String get confirm_deletion;

  /// No description provided for @confirm_deletion_msg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this beneficiary from favorite list?'**
  String get confirm_deletion_msg;

  /// No description provided for @beneficiary_deleted_msg.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary deleted successfully'**
  String get beneficiary_deleted_msg;

  /// No description provided for @beneficiary_updated_msg.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary list has been updated'**
  String get beneficiary_updated_msg;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get summary;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Debited amount'**
  String get amount;

  /// No description provided for @amount_required.
  ///
  /// In en, this message translates to:
  /// **'Minimum transfer amount is 1'**
  String get amount_required;

  /// No description provided for @from_required.
  ///
  /// In en, this message translates to:
  /// **'Select from account to proceed'**
  String get from_required;

  /// No description provided for @to_required.
  ///
  /// In en, this message translates to:
  /// **'Select to account to proceed'**
  String get to_required;

  /// No description provided for @transfer_limits.
  ///
  /// In en, this message translates to:
  /// **'Transfer Limits'**
  String get transfer_limits;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date: '**
  String get date;

  /// No description provided for @reference.
  ///
  /// In en, this message translates to:
  /// **'Reference: '**
  String get reference;

  /// No description provided for @schedule_transfer.
  ///
  /// In en, this message translates to:
  /// **'Schedule Transfer'**
  String get schedule_transfer;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @select_account.
  ///
  /// In en, this message translates to:
  /// **'Select account'**
  String get select_account;

  /// No description provided for @transfer_successful.
  ///
  /// In en, this message translates to:
  /// **'Transfer Successful!'**
  String get transfer_successful;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get rate;

  /// No description provided for @equal.
  ///
  /// In en, this message translates to:
  /// **'='**
  String get equal;

  /// No description provided for @minus.
  ///
  /// In en, this message translates to:
  /// **'-'**
  String get minus;

  /// No description provided for @add_to_quick_transfer.
  ///
  /// In en, this message translates to:
  /// **'Add to Quick Transfer'**
  String get add_to_quick_transfer;

  /// No description provided for @add_to_quick_beneficiary.
  ///
  /// In en, this message translates to:
  /// **'Add to Beneficiary'**
  String get add_to_quick_beneficiary;

  /// No description provided for @nick_name.
  ///
  /// In en, this message translates to:
  /// **'Nick name'**
  String get nick_name;

  /// No description provided for @note_optional.
  ///
  /// In en, this message translates to:
  /// **'Notes (Optional)'**
  String get note_optional;

  /// No description provided for @account_number_less_16.
  ///
  /// In en, this message translates to:
  /// **'Account number must be 16 digits.'**
  String get account_number_less_16;

  /// No description provided for @nick_name_required.
  ///
  /// In en, this message translates to:
  /// **'Nick name required'**
  String get nick_name_required;

  /// No description provided for @dot.
  ///
  /// In en, this message translates to:
  /// **'.'**
  String get dot;

  /// No description provided for @activated.
  ///
  /// In en, this message translates to:
  /// **'Activated'**
  String get activated;

  /// No description provided for @not_activated.
  ///
  /// In en, this message translates to:
  /// **'Not Activated'**
  String get not_activated;

  /// No description provided for @not_registered.
  ///
  /// In en, this message translates to:
  /// **'Not Registered'**
  String get not_registered;

  /// No description provided for @registration_code_invalid.
  ///
  /// In en, this message translates to:
  /// **'Registration code is invalid.'**
  String get registration_code_invalid;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Notes (Optional)'**
  String get note;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes:'**
  String get notes;

  /// No description provided for @notes_.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes_;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @send_money_to.
  ///
  /// In en, this message translates to:
  /// **'Send Money To'**
  String get send_money_to;

  /// No description provided for @card.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get card;

  /// No description provided for @token_activation.
  ///
  /// In en, this message translates to:
  /// **'Token activation'**
  String get token_activation;

  /// No description provided for @token_activation_msg.
  ///
  /// In en, this message translates to:
  /// **'Soft token needs to be activated first to proceed'**
  String get token_activation_msg;

  /// No description provided for @transfer_limit_exceeded.
  ///
  /// In en, this message translates to:
  /// **'Transfer limit is exceeded'**
  String get transfer_limit_exceeded;

  /// No description provided for @update_available.
  ///
  /// In en, this message translates to:
  /// **'Update Available'**
  String get update_available;

  /// No description provided for @new_version_available.
  ///
  /// In en, this message translates to:
  /// **'A new version is available. We recommend updating for the best experience.'**
  String get new_version_available;

  /// No description provided for @update_upper_cased.
  ///
  /// In en, this message translates to:
  /// **'UPDATE'**
  String get update_upper_cased;

  /// No description provided for @update_required.
  ///
  /// In en, this message translates to:
  /// **'Update Required'**
  String get update_required;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @beneficiary_added_msg.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary added successfully'**
  String get beneficiary_added_msg;

  /// No description provided for @no_beneficiaries_yet.
  ///
  /// In en, this message translates to:
  /// **'No beneficiaries yet'**
  String get no_beneficiaries_yet;

  /// No description provided for @once_you_add_beneficiary_they_will_show.
  ///
  /// In en, this message translates to:
  /// **'Once you add a beneficiary, they{shortcut}ll show up here.'**
  String once_you_add_beneficiary_they_will_show(Object shortcut);

  /// No description provided for @no_matches_found.
  ///
  /// In en, this message translates to:
  /// **'No matches found'**
  String get no_matches_found;

  /// No description provided for @try_search_with_different_keyboard.
  ///
  /// In en, this message translates to:
  /// **'Try searching with different keywords.'**
  String get try_search_with_different_keyboard;

  /// No description provided for @search_.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get search_;

  /// No description provided for @nick_name_characters_error_msg.
  ///
  /// In en, this message translates to:
  /// **'Nickname must be 2-35 characters'**
  String get nick_name_characters_error_msg;

  /// No description provided for @a_new_version_available.
  ///
  /// In en, this message translates to:
  /// **'A new version of the app is available! Update\n  to latest version for new features and improvements.'**
  String get a_new_version_available;

  /// No description provided for @app_no_longer_supported.
  ///
  /// In en, this message translates to:
  /// **'Your app version is outdated and no longer supported. Please update to continue using the app.'**
  String get app_no_longer_supported;

  /// No description provided for @we_could_not_load_you_list.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t reload your list'**
  String get we_could_not_load_you_list;

  /// No description provided for @we_could_not_load_the_list.
  ///
  /// In en, this message translates to:
  /// **'We couldn{shortcut}t reload the list'**
  String we_could_not_load_the_list(Object shortcut);

  /// No description provided for @transfer_not_available.
  ///
  /// In en, this message translates to:
  /// **'Transfer not available'**
  String get transfer_not_available;

  /// No description provided for @transfer_between_own_accounts.
  ///
  /// In en, this message translates to:
  /// **'Transfer between own accounts is currently not available due to having single account.'**
  String get transfer_between_own_accounts;

  /// No description provided for @cancel_transfer.
  ///
  /// In en, this message translates to:
  /// **'Cancel Transfer'**
  String get cancel_transfer;

  /// No description provided for @cancel_transfer_content.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to close this screen? Any entered details will be lost.'**
  String get cancel_transfer_content;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @transfer_type.
  ///
  /// In en, this message translates to:
  /// **'Transfer Type'**
  String get transfer_type;

  /// No description provided for @transfer_type_.
  ///
  /// In en, this message translates to:
  /// **'Transfer type'**
  String get transfer_type_;

  /// No description provided for @credited_amount.
  ///
  /// In en, this message translates to:
  /// **'Credited amount:'**
  String get credited_amount;

  /// No description provided for @own.
  ///
  /// In en, this message translates to:
  /// **'Own'**
  String get own;

  /// No description provided for @account_number_invalid.
  ///
  /// In en, this message translates to:
  /// **'Account number/IBAN is invalid.'**
  String get account_number_invalid;

  /// No description provided for @card_number_invalid.
  ///
  /// In en, this message translates to:
  /// **'Card number is invalid.'**
  String get card_number_invalid;

  /// No description provided for @could_not_load_transfer_history.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your Transfer history'**
  String get could_not_load_transfer_history;

  /// No description provided for @no_transfers.
  ///
  /// In en, this message translates to:
  /// **'No Transfers'**
  String get no_transfers;

  /// No description provided for @own_account.
  ///
  /// In en, this message translates to:
  /// **'Own Account'**
  String get own_account;

  /// No description provided for @recent_transfers.
  ///
  /// In en, this message translates to:
  /// **'Recent Transfers'**
  String get recent_transfers;

  /// No description provided for @transfers_history.
  ///
  /// In en, this message translates to:
  /// **'Transfers History'**
  String get transfers_history;

  /// No description provided for @normal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normal;

  /// No description provided for @ipn_instant.
  ///
  /// In en, this message translates to:
  /// **'IPN Instant'**
  String get ipn_instant;

  /// No description provided for @payment_address.
  ///
  /// In en, this message translates to:
  /// **'Payment Address'**
  String get payment_address;

  /// No description provided for @account_iban.
  ///
  /// In en, this message translates to:
  /// **'Account/IBAN'**
  String get account_iban;

  /// No description provided for @local_transfer.
  ///
  /// In en, this message translates to:
  /// **'Local Transfer'**
  String get local_transfer;

  /// No description provided for @select_bank.
  ///
  /// In en, this message translates to:
  /// **'Select bank'**
  String get select_bank;

  /// No description provided for @beneficiary_name.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary name'**
  String get beneficiary_name;

  /// No description provided for @beneficiary_name_.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary Name'**
  String get beneficiary_name_;

  /// No description provided for @bank_name_required.
  ///
  /// In en, this message translates to:
  /// **'Bank name is required'**
  String get bank_name_required;

  /// No description provided for @beneficiary_name_required.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary name is required'**
  String get beneficiary_name_required;

  /// No description provided for @transfer_details.
  ///
  /// In en, this message translates to:
  /// **'Transfer details'**
  String get transfer_details;

  /// No description provided for @repeat_transfer.
  ///
  /// In en, this message translates to:
  /// **'Repeat Transfer'**
  String get repeat_transfer;

  /// No description provided for @scheduled.
  ///
  /// In en, this message translates to:
  /// **'Scheduled'**
  String get scheduled;

  /// No description provided for @amount_or_name.
  ///
  /// In en, this message translates to:
  /// **'Amount or name'**
  String get amount_or_name;

  /// No description provided for @select_date_range.
  ///
  /// In en, this message translates to:
  /// **'Select Date Range'**
  String get select_date_range;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @start_date.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get start_date;

  /// No description provided for @end_date.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get end_date;

  /// No description provided for @request_a_card.
  ///
  /// In en, this message translates to:
  /// **'Request a card'**
  String get request_a_card;

  /// No description provided for @available_balance_is_insufficient.
  ///
  /// In en, this message translates to:
  /// **'Available balance is insufficient'**
  String get available_balance_is_insufficient;

  /// No description provided for @amount_with_currency.
  ///
  /// In en, this message translates to:
  /// **'{amount} {currency}'**
  String amount_with_currency(String amount, String currency);

  /// No description provided for @card_last_4_digits.
  ///
  /// In en, this message translates to:
  /// **'**** {digits}'**
  String card_last_4_digits(String digits);

  /// No description provided for @due_amount.
  ///
  /// In en, this message translates to:
  /// **'Due Amount:'**
  String get due_amount;

  /// No description provided for @due_date.
  ///
  /// In en, this message translates to:
  /// **'Due Date:'**
  String get due_date;

  /// No description provided for @card_details.
  ///
  /// In en, this message translates to:
  /// **'Card Details'**
  String get card_details;

  /// No description provided for @pay_card.
  ///
  /// In en, this message translates to:
  /// **'Pay Card'**
  String get pay_card;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @last_week.
  ///
  /// In en, this message translates to:
  /// **'Last week'**
  String get last_week;

  /// No description provided for @last_month.
  ///
  /// In en, this message translates to:
  /// **'Last month'**
  String get last_month;

  /// No description provided for @last_3_months.
  ///
  /// In en, this message translates to:
  /// **'Last 3 months'**
  String get last_3_months;

  /// No description provided for @select_date.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get select_date;

  /// No description provided for @card_transactions.
  ///
  /// In en, this message translates to:
  /// **'Card transactions'**
  String get card_transactions;

  /// No description provided for @card_limit.
  ///
  /// In en, this message translates to:
  /// **'Card limit'**
  String get card_limit;

  /// No description provided for @no_transactions_yet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get no_transactions_yet;

  /// No description provided for @fractional_amount_part.
  ///
  /// In en, this message translates to:
  /// **'.{decimal}'**
  String fractional_amount_part(String decimal);

  /// No description provided for @hidden_amount_asterisks.
  ///
  /// In en, this message translates to:
  /// **'********'**
  String get hidden_amount_asterisks;

  /// No description provided for @we_could_not_load_your_transactions.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your transactions'**
  String get we_could_not_load_your_transactions;

  /// No description provided for @otp_code_sent_to_your_number.
  ///
  /// In en, this message translates to:
  /// **'Please enter the OTP from your SCB token app.'**
  String get otp_code_sent_to_your_number;

  /// No description provided for @this_fields_accept_2_char.
  ///
  /// In en, this message translates to:
  /// **'This field accepts minimum 2 letters'**
  String get this_fields_accept_2_char;

  /// No description provided for @transfer_error.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t complete your transfer due to an unexpected error. Please try again later.'**
  String get transfer_error;

  /// No description provided for @enable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// No description provided for @disable.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get disable;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get enter_password;

  /// No description provided for @account_details.
  ///
  /// In en, this message translates to:
  /// **'Account Details'**
  String get account_details;

  /// No description provided for @open_new_deposit.
  ///
  /// In en, this message translates to:
  /// **'Open New Deposit'**
  String get open_new_deposit;

  /// No description provided for @interest_rate.
  ///
  /// In en, this message translates to:
  /// **'Interest Rate'**
  String get interest_rate;

  /// No description provided for @pending_amount.
  ///
  /// In en, this message translates to:
  /// **'Pending Amount'**
  String get pending_amount;

  /// No description provided for @loan_details.
  ///
  /// In en, this message translates to:
  /// **'Loans Details'**
  String get loan_details;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @next_installment_amount.
  ///
  /// In en, this message translates to:
  /// **'Next Installment Amount'**
  String get next_installment_amount;

  /// No description provided for @next_installment_date.
  ///
  /// In en, this message translates to:
  /// **'Next Installment Date'**
  String get next_installment_date;

  /// No description provided for @paid_installments.
  ///
  /// In en, this message translates to:
  /// **'Paid Installments'**
  String get paid_installments;

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remaining;

  /// No description provided for @installment_frequency.
  ///
  /// In en, this message translates to:
  /// **'Installment Frequency'**
  String get installment_frequency;

  /// No description provided for @fixed_rate.
  ///
  /// In en, this message translates to:
  /// **'Fixed Rate'**
  String get fixed_rate;

  /// No description provided for @maturity_left.
  ///
  /// In en, this message translates to:
  /// **'Maturity Left'**
  String get maturity_left;

  /// No description provided for @collateral_type.
  ///
  /// In en, this message translates to:
  /// **'Collateral Type'**
  String get collateral_type;

  /// No description provided for @issued_date.
  ///
  /// In en, this message translates to:
  /// **'Issued Date'**
  String get issued_date;

  /// No description provided for @na.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get na;

  /// No description provided for @loan_payments.
  ///
  /// In en, this message translates to:
  /// **'Loan Payments'**
  String get loan_payments;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @due.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get due;

  /// No description provided for @request_cheque_book.
  ///
  /// In en, this message translates to:
  /// **'Request Chequebook'**
  String get request_cheque_book;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @select_number.
  ///
  /// In en, this message translates to:
  /// **'Select number'**
  String get select_number;

  /// No description provided for @page.
  ///
  /// In en, this message translates to:
  /// **'Page'**
  String get page;

  /// No description provided for @fees.
  ///
  /// In en, this message translates to:
  /// **'Fees'**
  String get fees;

  /// No description provided for @select_account_required_msg.
  ///
  /// In en, this message translates to:
  /// **'Select account is required'**
  String get select_account_required_msg;

  /// No description provided for @select_leaves_error_msg.
  ///
  /// In en, this message translates to:
  /// **'Select the Leaves number to proceed'**
  String get select_leaves_error_msg;

  /// No description provided for @need_agree_terms.
  ///
  /// In en, this message translates to:
  /// **'You need to agree to the terms and conditions to continue.'**
  String get need_agree_terms;

  /// No description provided for @submitted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Submitted Successfully!'**
  String get submitted_successfully;

  /// No description provided for @your_cheque_request_received.
  ///
  /// In en, this message translates to:
  /// **'Your Chequebook request has been received.'**
  String get your_cheque_request_received;

  /// No description provided for @pages_cheques.
  ///
  /// In en, this message translates to:
  /// **'Pages Cheques'**
  String get pages_cheques;

  /// No description provided for @more_details.
  ///
  /// In en, this message translates to:
  /// **'More Details'**
  String get more_details;

  /// No description provided for @request_status.
  ///
  /// In en, this message translates to:
  /// **'Request status'**
  String get request_status;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @not_eligible_request_msg.
  ///
  /// In en, this message translates to:
  /// **'You’re Not Eligible to Request a Chequebook'**
  String get not_eligible_request_msg;

  /// No description provided for @deposit_details.
  ///
  /// In en, this message translates to:
  /// **'Deposit Details'**
  String get deposit_details;

  /// No description provided for @deposit_no.
  ///
  /// In en, this message translates to:
  /// **'Deposit no. {number}'**
  String deposit_no(String number);

  /// No description provided for @months_left.
  ///
  /// In en, this message translates to:
  /// **'/{number} Months'**
  String months_left(int number);

  /// No description provided for @redeem_account.
  ///
  /// In en, this message translates to:
  /// **'Redeem Account'**
  String get redeem_account;

  /// No description provided for @interest_account.
  ///
  /// In en, this message translates to:
  /// **'Interest Account'**
  String get interest_account;

  /// No description provided for @payout_details.
  ///
  /// In en, this message translates to:
  /// **'Payout Details'**
  String get payout_details;

  /// No description provided for @account_type_with_number.
  ///
  /// In en, this message translates to:
  /// **'{type} {number}'**
  String account_type_with_number(String type, String number);

  /// No description provided for @interest_frequency.
  ///
  /// In en, this message translates to:
  /// **'Interest Frequency'**
  String get interest_frequency;

  /// No description provided for @blocked_amount.
  ///
  /// In en, this message translates to:
  /// **'Blocked Amount'**
  String get blocked_amount;

  /// No description provided for @percent_rate_with_type.
  ///
  /// In en, this message translates to:
  /// **'{rate}% {type} rate'**
  String percent_rate_with_type(String rate, String type);

  /// No description provided for @loan_no.
  ///
  /// In en, this message translates to:
  /// **'Loan no.'**
  String get loan_no;

  /// No description provided for @chequebook_details.
  ///
  /// In en, this message translates to:
  /// **'Chequebook Details'**
  String get chequebook_details;

  /// No description provided for @used.
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get used;

  /// No description provided for @used_cheques.
  ///
  /// In en, this message translates to:
  /// **'Used Cheques'**
  String get used_cheques;

  /// No description provided for @execution_blocked.
  ///
  /// In en, this message translates to:
  /// **'Execution blocked'**
  String get execution_blocked;

  /// No description provided for @select_service.
  ///
  /// In en, this message translates to:
  /// **'Select Service'**
  String get select_service;

  /// No description provided for @chequebook.
  ///
  /// In en, this message translates to:
  /// **'Chequebook'**
  String get chequebook;

  /// No description provided for @my_products.
  ///
  /// In en, this message translates to:
  /// **'My Products'**
  String get my_products;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @empty_chequebooks_msg.
  ///
  /// In en, this message translates to:
  /// **'No chequebooks yet'**
  String get empty_chequebooks_msg;

  /// No description provided for @error_chequebooks_msg.
  ///
  /// In en, this message translates to:
  /// **'We couldn{shortcut}t load your chequebooks'**
  String error_chequebooks_msg(Object shortcut);

  /// No description provided for @empty_used_cheques_msg.
  ///
  /// In en, this message translates to:
  /// **'No used cheques yet'**
  String get empty_used_cheques_msg;

  /// No description provided for @error_used_cheques_msg.
  ///
  /// In en, this message translates to:
  /// **'We couldn{shortcut}t load your cheques'**
  String error_used_cheques_msg(Object shortcut);

  /// No description provided for @loans.
  ///
  /// In en, this message translates to:
  /// **'Loans'**
  String get loans;

  /// No description provided for @saving_account.
  ///
  /// In en, this message translates to:
  /// **'Savings Account'**
  String get saving_account;

  /// No description provided for @we_could_not_load_your_loans.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your loans'**
  String get we_could_not_load_your_loans;

  /// No description provided for @we_could_not_load_your_payments.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your payments'**
  String get we_could_not_load_your_payments;

  /// No description provided for @saving_accounts.
  ///
  /// In en, this message translates to:
  /// **'Saving Accounts'**
  String get saving_accounts;

  /// No description provided for @current_affairs.
  ///
  /// In en, this message translates to:
  /// **'Current Affairs'**
  String get current_affairs;

  /// No description provided for @certificates.
  ///
  /// In en, this message translates to:
  /// **'Certificates'**
  String get certificates;

  /// No description provided for @time_deposits.
  ///
  /// In en, this message translates to:
  /// **'Time Deposit'**
  String get time_deposits;

  /// No description provided for @deposits.
  ///
  /// In en, this message translates to:
  /// **'Deposits'**
  String get deposits;

  /// No description provided for @deposits_dashboard.
  ///
  /// In en, this message translates to:
  /// **'Deposits'**
  String get deposits_dashboard;

  /// No description provided for @up_to_interest_rate.
  ///
  /// In en, this message translates to:
  /// **'Up to {interestRate}%'**
  String up_to_interest_rate(double interestRate);

  /// No description provided for @cheques.
  ///
  /// In en, this message translates to:
  /// **'Cheques'**
  String get cheques;

  /// No description provided for @not_available.
  ///
  /// In en, this message translates to:
  /// **'Not Available'**
  String get not_available;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @value_percent.
  ///
  /// In en, this message translates to:
  /// **'{value}%'**
  String value_percent(double value);

  /// No description provided for @min_amount.
  ///
  /// In en, this message translates to:
  /// **'Min. Amount'**
  String get min_amount;

  /// No description provided for @no_min_amount.
  ///
  /// In en, this message translates to:
  /// **'No Minimum amount'**
  String get no_min_amount;

  /// No description provided for @debited_account.
  ///
  /// In en, this message translates to:
  /// **'Debited account'**
  String get debited_account;

  /// No description provided for @no_products_found.
  ///
  /// In en, this message translates to:
  /// **'No products found'**
  String get no_products_found;

  /// No description provided for @amount_.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount_;

  /// No description provided for @minimum_opening_amount_is.
  ///
  /// In en, this message translates to:
  /// **'Minimum opening amount is {amount} {currency}'**
  String minimum_opening_amount_is(String amount, String currency);

  /// No description provided for @account_opened_successfully.
  ///
  /// In en, this message translates to:
  /// **'Account Opened successfully'**
  String get account_opened_successfully;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @in_progress.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get in_progress;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @request_date_and_time.
  ///
  /// In en, this message translates to:
  /// **'Request date and time'**
  String get request_date_and_time;

  /// No description provided for @request_no.
  ///
  /// In en, this message translates to:
  /// **'Request no.'**
  String get request_no;

  /// No description provided for @empty_requests_msg.
  ///
  /// In en, this message translates to:
  /// **'No requests yet'**
  String get empty_requests_msg;

  /// No description provided for @error_requests_msg.
  ///
  /// In en, this message translates to:
  /// **'We couldn{shortcut}t load your requests'**
  String error_requests_msg(Object shortcut);

  /// No description provided for @funding_details.
  ///
  /// In en, this message translates to:
  /// **'Funding Details'**
  String get funding_details;

  /// No description provided for @deposit_account.
  ///
  /// In en, this message translates to:
  /// **'Deposit Account'**
  String get deposit_account;

  /// No description provided for @amount_only.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount_only;

  /// No description provided for @minimum_certificate_amount_is.
  ///
  /// In en, this message translates to:
  /// **'The minimum certificate amount is {amount} and its multiples'**
  String minimum_certificate_amount_is(String amount);

  /// No description provided for @minimum_amount_is.
  ///
  /// In en, this message translates to:
  /// **'The minimum opening amount is {amount} {currency}'**
  String minimum_amount_is(String amount, String currency);

  /// No description provided for @minimum_with_amount_and_currency.
  ///
  /// In en, this message translates to:
  /// **'Minimum {amount} {currency}'**
  String minimum_with_amount_and_currency(String amount, String currency);

  /// No description provided for @opened_successfully.
  ///
  /// In en, this message translates to:
  /// **'Opened successfully'**
  String get opened_successfully;

  /// No description provided for @amount_is_required.
  ///
  /// In en, this message translates to:
  /// **'Amount is required'**
  String get amount_is_required;

  /// No description provided for @interest_account_is_required.
  ///
  /// In en, this message translates to:
  /// **'Interest account is required'**
  String get interest_account_is_required;

  /// No description provided for @no_products_found_type.
  ///
  /// In en, this message translates to:
  /// **'No {type} Products Found'**
  String no_products_found_type(String type);

  /// No description provided for @terms_and_conditions_agreement_required.
  ///
  /// In en, this message translates to:
  /// **'You need to agree to the terms and conditions to continue.'**
  String get terms_and_conditions_agreement_required;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @frequency.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get frequency;

  /// No description provided for @added.
  ///
  /// In en, this message translates to:
  /// **'Added'**
  String get added;

  /// No description provided for @overdue_amount.
  ///
  /// In en, this message translates to:
  /// **'Overdue Amount'**
  String get overdue_amount;

  /// No description provided for @multiple_of_minimum_amount.
  ///
  /// In en, this message translates to:
  /// **'Multiple of {amount} {currency}'**
  String multiple_of_minimum_amount(String amount, String currency);

  /// No description provided for @debited_amount.
  ///
  /// In en, this message translates to:
  /// **'Debited amount'**
  String get debited_amount;

  /// No description provided for @no_results_found.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get no_results_found;

  /// No description provided for @account_category_number.
  ///
  /// In en, this message translates to:
  /// **'{categoryName} - {accountId}'**
  String account_category_number(String categoryName, String accountId);

  /// No description provided for @transactions_list.
  ///
  /// In en, this message translates to:
  /// **'Transactions List'**
  String get transactions_list;

  /// No description provided for @transaction_date_format.
  ///
  /// In en, this message translates to:
  /// **'{day} {month} {year}'**
  String transaction_date_format(String day, String month, String year);

  /// No description provided for @no_accounts_found.
  ///
  /// In en, this message translates to:
  /// **'No accounts found'**
  String get no_accounts_found;

  /// No description provided for @no_cards_found.
  ///
  /// In en, this message translates to:
  /// **'No cards found'**
  String get no_cards_found;

  /// No description provided for @no_deposit_accounts_found.
  ///
  /// In en, this message translates to:
  /// **'No deposit accounts found'**
  String get no_deposit_accounts_found;

  /// No description provided for @credit_card_payment.
  ///
  /// In en, this message translates to:
  /// **'Credit Card Payment'**
  String get credit_card_payment;

  /// No description provided for @deduct_amount_from.
  ///
  /// In en, this message translates to:
  /// **'Deduct amount from'**
  String get deduct_amount_from;

  /// No description provided for @payment_amount.
  ///
  /// In en, this message translates to:
  /// **'Payment amount'**
  String get payment_amount;

  /// No description provided for @full_due_amount.
  ///
  /// In en, this message translates to:
  /// **'Full Due Amount:'**
  String get full_due_amount;

  /// No description provided for @min_due_amount.
  ///
  /// In en, this message translates to:
  /// **'Min Due Amount:'**
  String get min_due_amount;

  /// No description provided for @other_amount.
  ///
  /// In en, this message translates to:
  /// **'Other Amount'**
  String get other_amount;

  /// No description provided for @transaction_limit_exceeded.
  ///
  /// In en, this message translates to:
  /// **'Transaction limit exceeded'**
  String get transaction_limit_exceeded;

  /// No description provided for @transfer_to_charity.
  ///
  /// In en, this message translates to:
  /// **'Transfer to Charity'**
  String get transfer_to_charity;

  /// No description provided for @select_charity.
  ///
  /// In en, this message translates to:
  /// **'Select Charity'**
  String get select_charity;

  /// No description provided for @charity.
  ///
  /// In en, this message translates to:
  /// **'Charity'**
  String get charity;

  /// No description provided for @this_field_is_required.
  ///
  /// In en, this message translates to:
  /// **'This filed is required '**
  String get this_field_is_required;

  /// No description provided for @transaction_date_format_with_time.
  ///
  /// In en, this message translates to:
  /// **'{day} {month} {year} {time}'**
  String transaction_date_format_with_time(
      String day, String month, String year, String time);

  /// No description provided for @amount_must_be_greater_than_min_due_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount must be greater than {minAmount}'**
  String amount_must_be_greater_than_min_due_amount(String minAmount);

  /// No description provided for @reference_.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get reference_;

  /// No description provided for @date_.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date_;

  /// No description provided for @transaction_type.
  ///
  /// In en, this message translates to:
  /// **'Transaction Type'**
  String get transaction_type;

  /// No description provided for @iban.
  ///
  /// In en, this message translates to:
  /// **'IBAN'**
  String get iban;

  /// No description provided for @wallet_number.
  ///
  /// In en, this message translates to:
  /// **'Wallet number'**
  String get wallet_number;

  /// No description provided for @mobile_number.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get mobile_number;

  /// No description provided for @mobile_no_is_invalid.
  ///
  /// In en, this message translates to:
  /// **'Mobile number is invalid'**
  String get mobile_no_is_invalid;

  /// No description provided for @wallet_no_is_valid.
  ///
  /// In en, this message translates to:
  /// **'Wallet number is invalid'**
  String get wallet_no_is_valid;

  /// No description provided for @ipn_address.
  ///
  /// In en, this message translates to:
  /// **'IPA Address'**
  String get ipn_address;

  /// No description provided for @ipn_address_invalid.
  ///
  /// In en, this message translates to:
  /// **'IPA address is invalid'**
  String get ipn_address_invalid;

  /// No description provided for @savings.
  ///
  /// In en, this message translates to:
  /// **'Savings'**
  String get savings;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @change_pass_page_msg.
  ///
  /// In en, this message translates to:
  /// **'Enter unique password. keep them confidential. you will need them for future logins.'**
  String get change_pass_page_msg;

  /// No description provided for @disclaimer_minimum_amount_is_and_its_multiples.
  ///
  /// In en, this message translates to:
  /// **'The minimum {type} amount is {amount} and its multiples'**
  String disclaimer_minimum_amount_is_and_its_multiples(
      String type, String amount);

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @current_password.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get current_password;

  /// No description provided for @current_password_invalid.
  ///
  /// In en, this message translates to:
  /// **'Current password is invalid'**
  String get current_password_invalid;

  /// No description provided for @successful_change.
  ///
  /// In en, this message translates to:
  /// **'Successful Change!'**
  String get successful_change;

  /// No description provided for @password_changed_successfully.
  ///
  /// In en, this message translates to:
  /// **'The password is changed successfully.'**
  String get password_changed_successfully;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @call_center.
  ///
  /// In en, this message translates to:
  /// **'Call Center'**
  String get call_center;

  /// No description provided for @follow_us.
  ///
  /// In en, this message translates to:
  /// **'Follow Us'**
  String get follow_us;

  /// No description provided for @online_support.
  ///
  /// In en, this message translates to:
  /// **'Online Support'**
  String get online_support;

  /// No description provided for @exchange_rate_.
  ///
  /// In en, this message translates to:
  /// **'Exchange Rates'**
  String get exchange_rate_;

  /// No description provided for @last_update.
  ///
  /// In en, this message translates to:
  /// **'Last Update: {time}'**
  String last_update(String time);

  /// No description provided for @currency_converter.
  ///
  /// In en, this message translates to:
  /// **'Currency Converter'**
  String get currency_converter;

  /// No description provided for @egp_exchange_rate.
  ///
  /// In en, this message translates to:
  /// **'EGP Exchange Rate'**
  String get egp_exchange_rate;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @sell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get sell;

  /// No description provided for @selected_currency.
  ///
  /// In en, this message translates to:
  /// **'Select Currency'**
  String get selected_currency;

  /// No description provided for @hide_balance_prompt_title_hidden.
  ///
  /// In en, this message translates to:
  /// **'Balances are now hidden'**
  String get hide_balance_prompt_title_hidden;

  /// No description provided for @hide_balance_prompt_title_visible.
  ///
  /// In en, this message translates to:
  /// **'Balances are now visible'**
  String get hide_balance_prompt_title_visible;

  /// No description provided for @hide_balance_prompt_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Flip your screen down to quickly hide or show balances, or tap the eye icon above your balance'**
  String get hide_balance_prompt_subtitle;

  /// No description provided for @got_it.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get got_it;

  /// No description provided for @dont_show_again.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show again'**
  String get dont_show_again;

  /// No description provided for @hide_balance_by_default.
  ///
  /// In en, this message translates to:
  /// **'Hide Balance by Default'**
  String get hide_balance_by_default;

  /// No description provided for @cd_no.
  ///
  /// In en, this message translates to:
  /// **'CD No. {number}'**
  String cd_no(String number);

  /// No description provided for @td_no.
  ///
  /// In en, this message translates to:
  /// **'TD No. {number}'**
  String td_no(String number);

  /// No description provided for @certificate.
  ///
  /// In en, this message translates to:
  /// **'Certificate'**
  String get certificate;

  /// No description provided for @debited_account_is_required.
  ///
  /// In en, this message translates to:
  /// **'Please select debited account first'**
  String get debited_account_is_required;

  /// No description provided for @out_side_egypt.
  ///
  /// In en, this message translates to:
  /// **'Outside Egypt'**
  String get out_side_egypt;

  /// No description provided for @out_side_egypt_number.
  ///
  /// In en, this message translates to:
  /// **'(+202) 19093'**
  String get out_side_egypt_number;

  /// No description provided for @maximum_amount_is.
  ///
  /// In en, this message translates to:
  /// **'Max. {amount} {currency}'**
  String maximum_amount_is(String amount, String currency);

  /// No description provided for @min_amount_is.
  ///
  /// In en, this message translates to:
  /// **'Min. {amount} {currency}'**
  String min_amount_is(String amount, String currency);

  /// No description provided for @login_to_manage.
  ///
  /// In en, this message translates to:
  /// **'Log in to manage your finances'**
  String get login_to_manage;

  /// No description provided for @new_password_field.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get new_password_field;

  /// No description provided for @confirm_new_password_field.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get confirm_new_password_field;

  /// No description provided for @we_could_not_load_your_cards.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your cards'**
  String get we_could_not_load_your_cards;

  /// No description provided for @we_could_not_load_your_accounts.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your accounts'**
  String get we_could_not_load_your_accounts;

  /// No description provided for @we_could_not_load_your_cd_and_td.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t load your Certificates & Time deposits'**
  String get we_could_not_load_your_cd_and_td;

  /// No description provided for @we_could_not_load_offers.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load offers'**
  String get we_could_not_load_offers;

  /// No description provided for @password_dn_match.
  ///
  /// In en, this message translates to:
  /// **'Passwords don{shortcut}t match'**
  String password_dn_match(Object shortcut);

  /// No description provided for @edit_actions.
  ///
  /// In en, this message translates to:
  /// **'Edit Actions'**
  String get edit_actions;

  /// No description provided for @current_pass_required.
  ///
  /// In en, this message translates to:
  /// **'Current password is required'**
  String get current_pass_required;

  /// No description provided for @ahmed.
  ///
  /// In en, this message translates to:
  /// **'Ahmed'**
  String get ahmed;

  /// No description provided for @another_account.
  ///
  /// In en, this message translates to:
  /// **'Another Account'**
  String get another_account;

  /// No description provided for @are_you_sure_you_want_to_exit.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit?'**
  String get are_you_sure_you_want_to_exit;

  /// No description provided for @are_you_sure_you_want_to_exit_info.
  ///
  /// In en, this message translates to:
  /// **'Leaving now means you\'ll lose your progress and won\'t be able to pick up where \nyou left off.'**
  String get are_you_sure_you_want_to_exit_info;

  /// No description provided for @request_date.
  ///
  /// In en, this message translates to:
  /// **'Request date'**
  String get request_date;

  /// No description provided for @overdue_days.
  ///
  /// In en, this message translates to:
  /// **'Overdue days'**
  String get overdue_days;

  /// No description provided for @frequently_transferred_to.
  ///
  /// In en, this message translates to:
  /// **'Frequently transferred to'**
  String get frequently_transferred_to;

  /// No description provided for @select_favorite_beneficiary.
  ///
  /// In en, this message translates to:
  /// **'Select Favorite Beneficiary'**
  String get select_favorite_beneficiary;

  /// No description provided for @maichel.
  ///
  /// In en, this message translates to:
  /// **'Maichel'**
  String get maichel;

  /// No description provided for @one_time.
  ///
  /// In en, this message translates to:
  /// **'One Time'**
  String get one_time;

  /// No description provided for @recurring.
  ///
  /// In en, this message translates to:
  /// **'Recurring'**
  String get recurring;

  /// No description provided for @select_start_date.
  ///
  /// In en, this message translates to:
  /// **'Select Start Date'**
  String get select_start_date;

  /// No description provided for @number_of_occurrences.
  ///
  /// In en, this message translates to:
  /// **'Number of occurrences'**
  String get number_of_occurrences;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @execution_date.
  ///
  /// In en, this message translates to:
  /// **'Execution Date'**
  String get execution_date;

  /// No description provided for @occurrences.
  ///
  /// In en, this message translates to:
  /// **'Occurrences'**
  String get occurrences;

  /// No description provided for @times.
  ///
  /// In en, this message translates to:
  /// **'{times} Times'**
  String times(String times);

  /// No description provided for @date_of_submission.
  ///
  /// In en, this message translates to:
  /// **'Date of submission'**
  String get date_of_submission;

  /// No description provided for @date_of_execution.
  ///
  /// In en, this message translates to:
  /// **'Date of execution'**
  String get date_of_execution;

  /// No description provided for @maximum_number_of_recurring_is.
  ///
  /// In en, this message translates to:
  /// **'Maximum number of recurring is {max}'**
  String maximum_number_of_recurring_is(String max);

  /// No description provided for @account_type.
  ///
  /// In en, this message translates to:
  /// **'{accountType} Account'**
  String account_type(String accountType);

  /// No description provided for @no_beneficiaries_added.
  ///
  /// In en, this message translates to:
  /// **'No beneficiaries added'**
  String get no_beneficiaries_added;

  /// No description provided for @you_can_add_a_beneficiary_after_making_a_transfer_for_quicker_access_next_time.
  ///
  /// In en, this message translates to:
  /// **'You can add a beneficiary after making a transfer for quicker access next time.'**
  String
      get you_can_add_a_beneficiary_after_making_a_transfer_for_quicker_access_next_time;

  /// No description provided for @branches.
  ///
  /// In en, this message translates to:
  /// **'Branches'**
  String get branches;

  /// No description provided for @atm.
  ///
  /// In en, this message translates to:
  /// **'ATM'**
  String get atm;

  /// No description provided for @list_view.
  ///
  /// In en, this message translates to:
  /// **'List View'**
  String get list_view;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @direction.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get direction;

  /// No description provided for @branches_list.
  ///
  /// In en, this message translates to:
  /// **'Branches List'**
  String get branches_list;

  /// No description provided for @atm_list.
  ///
  /// In en, this message translates to:
  /// **'ATM List'**
  String get atm_list;

  /// No description provided for @open_till.
  ///
  /// In en, this message translates to:
  /// **'Open {time}'**
  String open_till(String time);

  /// No description provided for @kilometers_away.
  ///
  /// In en, this message translates to:
  /// **'{distance} Km away'**
  String kilometers_away(String distance);

  /// No description provided for @transfer_amount.
  ///
  /// In en, this message translates to:
  /// **'{optional}Transfer amount:'**
  String transfer_amount(String? optional);

  /// No description provided for @transfer_date.
  ///
  /// In en, this message translates to:
  /// **'{optional}Transfer date:'**
  String transfer_date(String? optional);

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @new_text.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get new_text;

  /// No description provided for @cancel_schedule_transfer.
  ///
  /// In en, this message translates to:
  /// **'Cancel Schedule Transfer'**
  String get cancel_schedule_transfer;

  /// No description provided for @schedule_details.
  ///
  /// In en, this message translates to:
  /// **'Schedule Details'**
  String get schedule_details;

  /// No description provided for @schedule_transfer_empty_message.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any scheduled transfers to display'**
  String get schedule_transfer_empty_message;

  /// No description provided for @schedule_cancellation_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Schedule Cancellation'**
  String get schedule_cancellation_dialog_title;

  /// No description provided for @schedule_cancellation_dialog_content.
  ///
  /// In en, this message translates to:
  /// **'By canceling this scheduled transfer, all upcoming transfers won\'t be executed.'**
  String get schedule_cancellation_dialog_content;

  /// No description provided for @cancel_schedule.
  ///
  /// In en, this message translates to:
  /// **'Cancel Schedule'**
  String get cancel_schedule;

  /// No description provided for @interest_rate_is_required.
  ///
  /// In en, this message translates to:
  /// **'Interest rate is required'**
  String get interest_rate_is_required;

  /// No description provided for @select_currency.
  ///
  /// In en, this message translates to:
  /// **'Select Currency'**
  String get select_currency;

  /// No description provided for @forget_pass_page_msg.
  ///
  /// In en, this message translates to:
  /// **'To reset your password, please verify your details.\nWe\'ll send a code to your registered mobile number.'**
  String get forget_pass_page_msg;

  /// No description provided for @scb_card_num.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get scb_card_num;

  /// No description provided for @card_pin_num.
  ///
  /// In en, this message translates to:
  /// **'Card Pin Number'**
  String get card_pin_num;

  /// No description provided for @exp_date.
  ///
  /// In en, this message translates to:
  /// **'MM/YY'**
  String get exp_date;

  /// No description provided for @pin_msg_atm.
  ///
  /// In en, this message translates to:
  /// **'This Pin is the password you use on the ATM'**
  String get pin_msg_atm;

  /// No description provided for @invalid_card_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid card number'**
  String get invalid_card_number;

  /// No description provided for @password_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Password is not correct'**
  String get password_incorrect;

  /// No description provided for @successful_reset.
  ///
  /// In en, this message translates to:
  /// **'Successful reset!'**
  String get successful_reset;

  /// No description provided for @password_reset_successfully.
  ///
  /// In en, this message translates to:
  /// **'The password is reset successfully.'**
  String get password_reset_successfully;

  /// No description provided for @some_data_invalid.
  ///
  /// In en, this message translates to:
  /// **'Some of the entered data is invalid, please re-check and try again.'**
  String get some_data_invalid;

  /// No description provided for @amount_must_be_less_than_max_due_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount must be less than {maxAmount}'**
  String amount_must_be_less_than_max_due_amount(String maxAmount);

  /// No description provided for @cant_show_nearby_branches_atm.
  ///
  /// In en, this message translates to:
  /// **'Can\'t show nearby branches/ATMs'**
  String get cant_show_nearby_branches_atm;

  /// No description provided for @cant_show_nearby_branches_atm_info.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t access your location. To view nearby branches and ATMs, please enable location services in your device settings.'**
  String get cant_show_nearby_branches_atm_info;

  /// No description provided for @enable_location.
  ///
  /// In en, this message translates to:
  /// **'Enable Location'**
  String get enable_location;

  /// No description provided for @x_results_found.
  ///
  /// In en, this message translates to:
  /// **'{count} results found'**
  String x_results_found(int count);

  /// No description provided for @deactivate.
  ///
  /// In en, this message translates to:
  /// **'Deactivate'**
  String get deactivate;

  /// No description provided for @session_expired_message.
  ///
  /// In en, this message translates to:
  /// **'Session has been expired, Please log in again to continue.'**
  String get session_expired_message;

  /// No description provided for @session_expired.
  ///
  /// In en, this message translates to:
  /// **'Session expired'**
  String get session_expired;

  /// No description provided for @connection_timeout.
  ///
  /// In en, this message translates to:
  /// **'Connection Timeout'**
  String get connection_timeout;

  /// No description provided for @compromised_device_message.
  ///
  /// In en, this message translates to:
  /// **'This device is rooted or jail-broken. For security reasons, you should not use this app. It will not work.'**
  String get compromised_device_message;

  /// No description provided for @compromised_device_title.
  ///
  /// In en, this message translates to:
  /// **'Security Alert'**
  String get compromised_device_title;

  /// No description provided for @swift_code.
  ///
  /// In en, this message translates to:
  /// **'Swift Code'**
  String get swift_code;

  /// No description provided for @iban_number.
  ///
  /// In en, this message translates to:
  /// **'IBAN Number'**
  String get iban_number;

  /// No description provided for @copied_successfully.
  ///
  /// In en, this message translates to:
  /// **'Copied successfully'**
  String get copied_successfully;

  /// No description provided for @disclaimer_cd.
  ///
  /// In en, this message translates to:
  /// **'The minimum certificate amount is {amount}'**
  String disclaimer_cd(String amount);

  /// No description provided for @disclaimer_td.
  ///
  /// In en, this message translates to:
  /// **'The minimum Time Deposit amount is {amount}'**
  String disclaimer_td(String amount);

  /// No description provided for @empty_string.
  ///
  /// In en, this message translates to:
  /// **''**
  String get empty_string;

  /// No description provided for @select_leaves_number_to_proceed.
  ///
  /// In en, this message translates to:
  /// **'Select the Leaves number to proceed'**
  String get select_leaves_number_to_proceed;

  /// No description provided for @show_session_overlay.
  ///
  /// In en, this message translates to:
  /// **'Show session overlay'**
  String get show_session_overlay;

  /// No description provided for @token_expires_at.
  ///
  /// In en, this message translates to:
  /// **'Token Expires At: {time}'**
  String token_expires_at(Object time);

  /// No description provided for @expires_in.
  ///
  /// In en, this message translates to:
  /// **'Expires In: \${time} seconds'**
  String expires_in(Object time);

  /// No description provided for @eligible_for_refresh.
  ///
  /// In en, this message translates to:
  /// **'Eligible for Refresh: {value}'**
  String eligible_for_refresh(Object value);

  /// No description provided for @refreshing.
  ///
  /// In en, this message translates to:
  /// **'Refreshing: {value}'**
  String refreshing(Object value);

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @idle.
  ///
  /// In en, this message translates to:
  /// **'Idle'**
  String get idle;

  /// No description provided for @authenticate_to_complete_setup.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to complete setup'**
  String get authenticate_to_complete_setup;

  /// No description provided for @authenticate_to_login.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to login'**
  String get authenticate_to_login;

  /// No description provided for @biometric_disabled_for_device_title.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication disabled'**
  String get biometric_disabled_for_device_title;

  /// No description provided for @biometric_disabled_for_device_message.
  ///
  /// In en, this message translates to:
  /// **'We have removed biometric login for this device because we noticed a login from another device.'**
  String get biometric_disabled_for_device_message;

  /// No description provided for @x_leaves.
  ///
  /// In en, this message translates to:
  /// **'{number} Leaves'**
  String x_leaves(int number);

  /// No description provided for @no_more_transfer_to_display.
  ///
  /// In en, this message translates to:
  /// **'No more transfers to display'**
  String get no_more_transfer_to_display;

  /// No description provided for @life_board.
  ///
  /// In en, this message translates to:
  /// **'Lifeboard'**
  String get life_board;

  /// No description provided for @please_try_again_later.
  ///
  /// In en, this message translates to:
  /// **'Please try again later'**
  String get please_try_again_later;

  /// No description provided for @otp_code_sent_to_your_number_new.
  ///
  /// In en, this message translates to:
  /// **'OTP code sent to your registered mobile number.'**
  String get otp_code_sent_to_your_number_new;

  /// No description provided for @life_board_onboarding_sub_text.
  ///
  /// In en, this message translates to:
  /// **'Easily view all your upcoming events in one smart board. Never miss a moment, deadline, or opportunity'**
  String get life_board_onboarding_sub_text;

  /// No description provided for @discover.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get discover;

  /// No description provided for @add_new_event_title.
  ///
  /// In en, this message translates to:
  /// **'Add New Event'**
  String get add_new_event_title;

  /// No description provided for @event_details_title.
  ///
  /// In en, this message translates to:
  /// **'Event Details'**
  String get event_details_title;

  /// No description provided for @event_details_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please enter the event name and select the date to create your new event.'**
  String get event_details_subtitle;

  /// No description provided for @event_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Event name'**
  String get event_name_hint;

  /// No description provided for @event_type_hint.
  ///
  /// In en, this message translates to:
  /// **'Event type'**
  String get event_type_hint;

  /// No description provided for @select_type_hint.
  ///
  /// In en, this message translates to:
  /// **'Select Event Type'**
  String get select_type_hint;

  /// No description provided for @event_date_hint.
  ///
  /// In en, this message translates to:
  /// **'Event date'**
  String get event_date_hint;

  /// No description provided for @event_note_hint.
  ///
  /// In en, this message translates to:
  /// **'Note (Optional)'**
  String get event_note_hint;

  /// No description provided for @event_added_title.
  ///
  /// In en, this message translates to:
  /// **'Event Added!'**
  String get event_added_title;

  /// No description provided for @event_added_message.
  ///
  /// In en, this message translates to:
  /// **'Your event is added successfully'**
  String get event_added_message;

  /// No description provided for @done_button.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done_button;

  /// No description provided for @this_field_required.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get this_field_required;

  /// No description provided for @update_event_button.
  ///
  /// In en, this message translates to:
  /// **'Update Event'**
  String get update_event_button;

  /// No description provided for @delete_event_button.
  ///
  /// In en, this message translates to:
  /// **'Delete Event'**
  String get delete_event_button;

  /// No description provided for @confirmDeletionTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Deletion'**
  String get confirmDeletionTitle;

  /// No description provided for @confirmDeletionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this event?'**
  String get confirmDeletionSubtitle;

  /// No description provided for @total_earning.
  ///
  /// In en, this message translates to:
  /// **'Total Earning'**
  String get total_earning;

  /// No description provided for @total_dues.
  ///
  /// In en, this message translates to:
  /// **'Total Dues'**
  String get total_dues;

  /// No description provided for @monthly_overview.
  ///
  /// In en, this message translates to:
  /// **'Month Overview'**
  String get monthly_overview;

  /// No description provided for @never_miss_thing.
  ///
  /// In en, this message translates to:
  /// **'Never miss a thing!'**
  String get never_miss_thing;

  /// No description provided for @check_your_events.
  ///
  /// In en, this message translates to:
  /// **'Check your upcoming events now'**
  String get check_your_events;

  /// No description provided for @click_to_discover.
  ///
  /// In en, this message translates to:
  /// **'Click to discover'**
  String get click_to_discover;

  /// No description provided for @you_have_events.
  ///
  /// In en, this message translates to:
  /// **'You have {count} events today'**
  String you_have_events(int count);

  /// No description provided for @today_with_date.
  ///
  /// In en, this message translates to:
  /// **'Today, {date}'**
  String today_with_date(String date);

  /// No description provided for @select_year.
  ///
  /// In en, this message translates to:
  /// **'Select Year'**
  String get select_year;

  /// No description provided for @could_not_load_events.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t reload your events'**
  String get could_not_load_events;

  /// No description provided for @you_have_no_events.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any events for this month'**
  String get you_have_no_events;

  /// No description provided for @month_year.
  ///
  /// In en, this message translates to:
  /// **'{month} {year}'**
  String month_year(String month, String year);

  /// No description provided for @welcome_to_lifeboard.
  ///
  /// In en, this message translates to:
  /// **'Welcome to'**
  String get welcome_to_lifeboard;

  /// No description provided for @add_new_scheduled_transfer.
  ///
  /// In en, this message translates to:
  /// **'Add New Scheduled Transfer'**
  String get add_new_scheduled_transfer;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthday;

  /// No description provided for @anniversary.
  ///
  /// In en, this message translates to:
  /// **'Anniversary'**
  String get anniversary;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @app_language.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get app_language;

  /// No description provided for @locale_language.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get locale_language;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get arabic;

  /// No description provided for @total_available_balance.
  ///
  /// In en, this message translates to:
  /// **'Total Available Balance'**
  String get total_available_balance;

  /// No description provided for @deactivate_biometric_login.
  ///
  /// In en, this message translates to:
  /// **'Deactivate Biometric Login'**
  String get deactivate_biometric_login;

  /// No description provided for @deactivate_biometric_login_msg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to deactivate biometric login?'**
  String get deactivate_biometric_login_msg;

  /// No description provided for @enable_biometric.
  ///
  /// In en, this message translates to:
  /// **'Enable Biometric'**
  String get enable_biometric;

  /// No description provided for @biometric_login_deactivated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Biometric Login Deactivated Successfully'**
  String get biometric_login_deactivated_successfully;

  /// No description provided for @biometric_activated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Biometric activated successfully'**
  String get biometric_activated_successfully;

  /// No description provided for @biometric_activation_failed.
  ///
  /// In en, this message translates to:
  /// **'Biometric activation failed'**
  String get biometric_activation_failed;

  /// No description provided for @biometric_deactivation_failed.
  ///
  /// In en, this message translates to:
  /// **'Biometric deactivation failed'**
  String get biometric_deactivation_failed;

  /// No description provided for @face_id_fingerprint.
  ///
  /// In en, this message translates to:
  /// **'Face ID/Fingerprint'**
  String get face_id_fingerprint;

  /// No description provided for @january.
  ///
  /// In en, this message translates to:
  /// **'Jan'**
  String get january;

  /// No description provided for @february.
  ///
  /// In en, this message translates to:
  /// **'Feb'**
  String get february;

  /// No description provided for @march.
  ///
  /// In en, this message translates to:
  /// **'Mar'**
  String get march;

  /// No description provided for @april.
  ///
  /// In en, this message translates to:
  /// **'Apr'**
  String get april;

  /// No description provided for @may.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get may;

  /// No description provided for @june.
  ///
  /// In en, this message translates to:
  /// **'Jun'**
  String get june;

  /// No description provided for @july.
  ///
  /// In en, this message translates to:
  /// **'Jul'**
  String get july;

  /// No description provided for @august.
  ///
  /// In en, this message translates to:
  /// **'Aug'**
  String get august;

  /// No description provided for @september.
  ///
  /// In en, this message translates to:
  /// **'Sep'**
  String get september;

  /// No description provided for @october.
  ///
  /// In en, this message translates to:
  /// **'Oct'**
  String get october;

  /// No description provided for @november.
  ///
  /// In en, this message translates to:
  /// **'Nov'**
  String get november;

  /// No description provided for @december.
  ///
  /// In en, this message translates to:
  /// **'Dec'**
  String get december;

  /// No description provided for @receive_cd_interest.
  ///
  /// In en, this message translates to:
  /// **'Receive CD Interest'**
  String get receive_cd_interest;

  /// No description provided for @receive_td_interest.
  ///
  /// In en, this message translates to:
  /// **'Receive TD Interest'**
  String get receive_td_interest;

  /// No description provided for @pay_loan_due.
  ///
  /// In en, this message translates to:
  /// **'Pay Loan Due'**
  String get pay_loan_due;

  /// No description provided for @pay_credit_card_due.
  ///
  /// In en, this message translates to:
  /// **'Pay Credit Card Due'**
  String get pay_credit_card_due;

  /// No description provided for @event_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Event updated successfully'**
  String get event_updated_successfully;

  /// No description provided for @event_deleted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Event deleted successfully'**
  String get event_deleted_successfully;

  /// No description provided for @weeks_left.
  ///
  /// In en, this message translates to:
  /// **'/{number} Weeks'**
  String weeks_left(int number);

  /// No description provided for @maximum_limit_reached.
  ///
  /// In en, this message translates to:
  /// **'Maximum Limit Reached'**
  String get maximum_limit_reached;

  /// No description provided for @maximum_limit_reached_message.
  ///
  /// In en, this message translates to:
  /// **'You can select up to {number} quick actions only. To add a new one, please deselect an existing item.'**
  String maximum_limit_reached_message(int number);

  /// No description provided for @minimum_limit_reached.
  ///
  /// In en, this message translates to:
  /// **'Minimum Limit Not Reached'**
  String get minimum_limit_reached;

  /// No description provided for @minimum_limit_reached_message.
  ///
  /// In en, this message translates to:
  /// **'You need to select at least {number} quick actions to continue. Please choose more to proceed.'**
  String minimum_limit_reached_message(int number);

  /// No description provided for @you_have_events_today.
  ///
  /// In en, this message translates to:
  /// **'You have {number} events today'**
  String you_have_events_today(int number);

  /// No description provided for @soft_token_welcome_msg.
  ///
  /// In en, this message translates to:
  /// **'Welcome to token activation you will make it in few steps'**
  String get soft_token_welcome_msg;

  /// No description provided for @soft_token_activation_step_one_title.
  ///
  /// In en, this message translates to:
  /// **'Get the Registration Code'**
  String get soft_token_activation_step_one_title;

  /// No description provided for @soft_token_activation_step_one_sub_title.
  ///
  /// In en, this message translates to:
  /// **'Open the SCB Token app, follow the instructions and copy the registration code'**
  String get soft_token_activation_step_one_sub_title;

  /// No description provided for @soft_token_activation_step_two_title.
  ///
  /// In en, this message translates to:
  /// **'Paste the code'**
  String get soft_token_activation_step_two_title;

  /// No description provided for @soft_token_activation_step_two_sub_title.
  ///
  /// In en, this message translates to:
  /// **'Return here to SCB mobile to paste the registration code'**
  String get soft_token_activation_step_two_sub_title;

  /// No description provided for @soft_token_activation_step_three_title.
  ///
  /// In en, this message translates to:
  /// **'Complete Activation'**
  String get soft_token_activation_step_three_title;

  /// No description provided for @soft_token_activation_step_three_sub_title.
  ///
  /// In en, this message translates to:
  /// **'Click continue on the token app then back here to complete activation'**
  String get soft_token_activation_step_three_sub_title;

  /// No description provided for @view_demo.
  ///
  /// In en, this message translates to:
  /// **'View Demo'**
  String get view_demo;

  /// No description provided for @soft_token_support.
  ///
  /// In en, this message translates to:
  /// **'Need support with token activation?'**
  String get soft_token_support;

  /// No description provided for @step_of.
  ///
  /// In en, this message translates to:
  /// **'Step {currentStep} of {totalSteps}'**
  String step_of(Object currentStep, Object totalSteps);

  /// No description provided for @get_registration_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Registration Code'**
  String get get_registration_code;

  /// No description provided for @get_your_registration_code.
  ///
  /// In en, this message translates to:
  /// **'Open the soft token app, copy the registration code and paste it here'**
  String get get_your_registration_code;

  /// No description provided for @soft_token_get_registration_code_msg.
  ///
  /// In en, this message translates to:
  /// **'Open the SCB Token app, copy the registration code, and return here to paste it.'**
  String get soft_token_get_registration_code_msg;

  /// No description provided for @complete_activation.
  ///
  /// In en, this message translates to:
  /// **'Complete Activation'**
  String get complete_activation;

  /// No description provided for @complete_activation_msg.
  ///
  /// In en, this message translates to:
  /// **'Continue on your soft token app the following process'**
  String get complete_activation_msg;

  /// No description provided for @scb_token_app.
  ///
  /// In en, this message translates to:
  /// **'SCB Token app'**
  String get scb_token_app;

  /// No description provided for @open_app.
  ///
  /// In en, this message translates to:
  /// **'Open app'**
  String get open_app;

  /// No description provided for @soft_token_app_tapped_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Yes, I\'ve tapped \"Continue\" in the SCB Token app'**
  String get soft_token_app_tapped_confirmation;

  /// No description provided for @soft_token_app_tapped_confirmation_msg.
  ///
  /// In en, this message translates to:
  /// **'This confirms you\'ve finished setup inside SCB Token app.'**
  String get soft_token_app_tapped_confirmation_msg;

  /// No description provided for @soft_token_activation_in_few_steps.
  ///
  /// In en, this message translates to:
  /// **'Token activation in few steps'**
  String get soft_token_activation_in_few_steps;

  /// No description provided for @ok_got_it.
  ///
  /// In en, this message translates to:
  /// **'Okay, got it'**
  String get ok_got_it;

  /// No description provided for @download_scb_soft_token_app.
  ///
  /// In en, this message translates to:
  /// **'Download Soft Token App'**
  String get download_scb_soft_token_app;

  /// No description provided for @copy_following_code.
  ///
  /// In en, this message translates to:
  /// **'Copy the Following'**
  String get copy_following_code;

  /// No description provided for @download_and_install_now.
  ///
  /// In en, this message translates to:
  /// **'Download and Install now'**
  String get download_and_install_now;

  /// No description provided for @copy_following_code_msg.
  ///
  /// In en, this message translates to:
  /// **'Please insert the activation code and serial number in the soft token app'**
  String get copy_following_code_msg;

  /// No description provided for @download_scb_soft_token_app_msg.
  ///
  /// In en, this message translates to:
  /// **'Use the SCB Token app to activate your token.'**
  String get download_scb_soft_token_app_msg;

  /// No description provided for @soft_token_activation_confirmation_error_msg.
  ///
  /// In en, this message translates to:
  /// **'Please confirm token activation before continuing.'**
  String get soft_token_activation_confirmation_error_msg;

  /// No description provided for @soft_token_closing_confirmation_msg.
  ///
  /// In en, this message translates to:
  /// **'Closing will discard your changes'**
  String get soft_token_closing_confirmation_msg;

  /// No description provided for @go_to_scb_app.
  ///
  /// In en, this message translates to:
  /// **'Go to SCB token app'**
  String get go_to_scb_app;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
