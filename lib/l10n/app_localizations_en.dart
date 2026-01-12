// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Suez Canal Bank';

  @override
  String get loading => 'Loading...';

  @override
  String get check_internet_connection => 'kindly check your network setting';

  @override
  String get no_internet => 'No Internet Connection';

  @override
  String get language => 'العربية';

  @override
  String get user_name => 'Username';

  @override
  String get welcome_to => 'Welcome!';

  @override
  String get password => 'Password';

  @override
  String get forgot_password => 'Forgot password?';

  @override
  String get forgot_password_title => 'Forgot password';

  @override
  String get log_in => 'Log in';

  @override
  String get user_name_required => 'Username is required';

  @override
  String get user_name_must_be => 'username must be of 8 to 20 characters.';

  @override
  String get password_required => 'Password is required';

  @override
  String get account_locked => 'Account locked';

  @override
  String get account_locked_content =>
      'You\'ve exceeded the maximum number of login attempts. For your security, your account has been locked. Please reset your password';

  @override
  String get unlock_account => 'Unlock account';

  @override
  String get reset_password => 'Reset password';

  @override
  String get cancel => 'Cancel';

  @override
  String get password_expired => 'Password expired';

  @override
  String get password_expired_content =>
      'Your password has expired. Please reset it to continue accessing your account';

  @override
  String get update_password => 'Update Password';

  @override
  String get already_logged_in => 'Already Logged In';

  @override
  String get already_logged_in_content =>
      'You\'re currently signed in on another device. To continue here, we\'ll log you out from the other';

  @override
  String get continue_button => 'Continue';

  @override
  String get invalid_username => 'Invalid username or password';

  @override
  String get invalid_username_content =>
      'Please check your login details and try again.';

  @override
  String get inactive_user => 'User inactive';

  @override
  String get inactive_user_content =>
      'This registered user hasn\'t been active for a while.';

  @override
  String get activate => 'Activate';

  @override
  String get error => 'Error';

  @override
  String get page_not_found => 'Page not found';

  @override
  String get login_failed => 'Login failed';

  @override
  String get invalid_code => 'Invalid OTP, please click on resend code';

  @override
  String attempts_left(int count) {
    return '$count attempts left';
  }

  @override
  String get max_attempts_exceeded =>
      'You have exceeded the maximum number of invalid OTP attempts. Please, contact the bank for further assistant';

  @override
  String get resend_code => 'Resend Code';

  @override
  String resend_code_timer(int seconds) {
    return '$seconds s';
  }

  @override
  String get help => 'Help';

  @override
  String get help_soft_token => 'Help';

  @override
  String get verification => 'Verification';

  @override
  String get otp_sent_message =>
      'OTP code sent to your registered mobile number.';

  @override
  String get sorry => 'Sorry!';

  @override
  String get new_password => 'New Password';

  @override
  String get confirm_new_password => 'Confirm new password';

  @override
  String get register_new_user_header =>
      'Enter unique username and password. keep them confidential. you will need them for future logins.';

  @override
  String get validation_length_characters => '8 - 64 characters';

  @override
  String get validation_number => 'At least 1 number';

  @override
  String get validation_upper_lower =>
      'At least 1 upper and lowercase character';

  @override
  String get validation_special_character => 'At least 1 special character';

  @override
  String get password_should_contains =>
      'Password should contains the following:';

  @override
  String get strong => 'Strong';

  @override
  String get weak => 'Weak';

  @override
  String get medium => 'Medium';

  @override
  String get confirm_password_required => 'Confirm Password is required';

  @override
  String get confirm_password_match_password =>
      'Confirm password not match password';

  @override
  String get password_not_valid => 'Password is invalid';

  @override
  String get banking_made_easy => 'Banking Made Easy – Start Your Journey Now!';

  @override
  String get select_registration_method =>
      'Select a Registration Method to Get Started.';

  @override
  String get cif_number => 'CIF number';

  @override
  String get account_number => 'Account number';

  @override
  String get account_number_iban => 'Account number/IBAN';

  @override
  String get card_number => 'Card number';

  @override
  String get enter_cif_info => 'Enter this information to verify your account.';

  @override
  String get cif_number_hint =>
      'You can find your customer information file number \n(CIF) in your bank statements or by contacting \ncustomer support.';

  @override
  String get national_id_number => 'National ID / Passport number';

  @override
  String get cif_number_required => 'CIF number required';

  @override
  String get card_number_required => 'Card number required';

  @override
  String get account_number_required => 'Account number required';

  @override
  String get national_id_required => 'National id / passport number required';

  @override
  String get contact_bank => 'Contact Bank';

  @override
  String get register_new_user => 'Register new user';

  @override
  String get terms_and_conditions => 'Terms & Conditions';

  @override
  String get terms_and_conditions_description =>
      'Please read & accept the terms and conditions to continue registration.';

  @override
  String get i_have_read_and_agree =>
      'I have read and agree to terms & conditions';

  @override
  String get terms_and_conditions_agreement => 'I have read and agree to ';

  @override
  String get failed_to_load_terms => 'Failed to load terms';

  @override
  String get new_user => 'New user?';

  @override
  String get register => 'Register';

  @override
  String get terms_agreement_required =>
      'You need to agree to the terms and conditions to continue.';

  @override
  String get ok => 'Ok';

  @override
  String get okay => 'Okay';

  @override
  String get update_now => 'Update Now';

  @override
  String get update => 'Update';

  @override
  String get later => 'Later';

  @override
  String get retry_otp_layer =>
      'You have recently resend the OTP, Please retry after 88 seconds';

  @override
  String get attention => 'Attention!';

  @override
  String get undergoing_maintenance =>
      'We are currently undergoing maintenance.';

  @override
  String get done => 'Done';

  @override
  String get success_activation_message_title => 'Activation Completed!';

  @override
  String get success_register_message_title => 'Registration Completed!';

  @override
  String get success_register_message_body =>
      'Your account is set up. Access your banking services securely anytime.';

  @override
  String get our_service_will_be_back_up =>
      'Our service will be back up and running soon!';

  @override
  String get confirm_exit => 'Confirm Exit';

  @override
  String get exit_message => 'Do you really want to exit the app?';

  @override
  String get exit => 'Exit';

  @override
  String get card_pin_hint =>
      'It is the card’s 4-digit code entered over the atm';

  @override
  String get card_pin => 'Card PIN';

  @override
  String get card_pin_required => 'Card Pin Required';

  @override
  String get home => 'Home';

  @override
  String get transfer => 'Transfer';

  @override
  String get cards => 'Cards';

  @override
  String get menu => 'Menu';

  @override
  String get logout => 'Logout';

  @override
  String get please_sign_in_first => 'Please sign in first to use biometrics.';

  @override
  String get username => 'Username';

  @override
  String get hi => 'Hi,';

  @override
  String get transfers => 'Transfers';

  @override
  String get pay_bills => 'Pay Bills';

  @override
  String get converter => 'Converter';

  @override
  String get add_new => 'Add new';

  @override
  String get current_account => 'Current Account';

  @override
  String get current_accounts => 'Current Accounts';

  @override
  String get total_amount => 'Total Amount';

  @override
  String get accounts => 'Accounts';

  @override
  String get egp => 'EGP';

  @override
  String get egp_en => 'EGP';

  @override
  String get cd_and_td => 'Certificates & Time deposits';

  @override
  String get cer_of_deposit => 'Certificate of deposit';

  @override
  String get time_of_deposit => 'Time of deposit';

  @override
  String get weekend_saver => 'Weekend Saver';

  @override
  String get name => 'Name';

  @override
  String get loans_overdraft => 'Loans & Overdraft';

  @override
  String get next_due_date => 'Next due date:';

  @override
  String get available_limit => 'Available limit';

  @override
  String get available_balance => 'Available Balance';

  @override
  String get debit_card => 'Debit card';

  @override
  String get credit_card => 'Credit card';

  @override
  String get gold => 'Gold';

  @override
  String get platinum => 'Platinum';

  @override
  String get view_all => 'View all';

  @override
  String get loan_name => 'Loan Name';

  @override
  String get next_due_amount => 'Next due amount:';

  @override
  String get apply_for_new => 'Apply for new';

  @override
  String get certificate_name => 'Certificate Name';

  @override
  String get open_new_account => 'Open new account';

  @override
  String get next_interest_amount => 'Next interest amount:';

  @override
  String get next_interest_date => 'Next interest date:';

  @override
  String get total_balance => 'Total Balance';

  @override
  String get transaction => 'Transactions';

  @override
  String get successful => 'Successful';

  @override
  String get hot_deal => 'Hot deal';

  @override
  String get buy_one_desc => 'Buy one get one 50%';

  @override
  String get days => 'days';

  @override
  String get offers => 'Offers';

  @override
  String get no_recent_transactions => 'No recent transfer';

  @override
  String could_not_load_transactions(Object shortcut) {
    return 'we couldn${shortcut}t load transfers list';
  }

  @override
  String get reload => 'Reload';

  @override
  String get quick_actions => 'Quick actions';

  @override
  String get quick_actions_sub_title =>
      'Customize your quick actions by removing or reordering items.';

  @override
  String get pay_credit => 'Pay credit';

  @override
  String get donate => 'Donate';

  @override
  String get exchange_rate => 'Exchange rate:';

  @override
  String get open_td => 'Open TD';

  @override
  String get open_cd => 'Open CD';

  @override
  String get open_account => 'Open Account';

  @override
  String get request_chequebook => 'Request Chequebook';

  @override
  String get locate_us => 'Locate Us';

  @override
  String get support => 'Support';

  @override
  String get something_went_wrong => 'Something went wrong!';

  @override
  String get add_new_section => 'Add new sections';

  @override
  String get edit_dashboard => 'Edit dashboard';

  @override
  String get edit_dashboard_header => 'Customize your dashboard';

  @override
  String get edit_dashboard_header_content =>
      'Hold and drag to reorder sections or cards. Hide what you don’t need for a cleaner view.';

  @override
  String get we_could_not_load_terms_and_conditions =>
      'we couldn’t load terms and conditions';

  @override
  String get search => 'Search';

  @override
  String get beneficiaries => 'Beneficiaries';

  @override
  String get soft_tokens => 'Soft tokens';

  @override
  String get more => 'More';

  @override
  String get management => 'Management';

  @override
  String get settings => 'Settings';

  @override
  String get activate_tokens => 'Activate your token';

  @override
  String get welcome_to_online_transfer =>
      'Welcome to our online transfer service, you can now transfer to any bank in Egypt. As using this service require the download of soft token via App store or play store';

  @override
  String get to_download_the_app => 'To download the App';

  @override
  String get click_here => 'Click here';

  @override
  String get generate_my_token => 'Generate my token';

  @override
  String get please_insert_activation =>
      'Please insert Activation Code and serial Number in SCB Token Application at your mobile';

  @override
  String get please_insert_generated_code =>
      'Please insert the registration code generated from SCB Token';

  @override
  String get serial_number => 'Serial number';

  @override
  String get your_activation_code_is => 'Activation code';

  @override
  String get enter_register_code => 'Enter your Registration code';

  @override
  String get register_code => 'Registration code';

  @override
  String get success_register_tokens_content =>
      'Your token is successfully activated. you can perform transaction now';

  @override
  String get you_must_activate_soft_tokens =>
      'You must activate soft tokens first to add beneficiary ';

  @override
  String get activate_soft_tokens => 'Activate soft tokens';

  @override
  String get soft_tokens_already_activated => 'Soft tokens already activated';

  @override
  String get manage_beneficiaries => 'Manage Beneficiaries';

  @override
  String get beneficiary_list => 'Beneficiary List';

  @override
  String get currently_dn_have_any_beneficiary =>
      'Currently you don’t have any beneficiary';

  @override
  String one_day_remaining(Object days) {
    return '$days day left';
  }

  @override
  String days_remaining(Object days) {
    return '$days days left';
  }

  @override
  String days_v2_remaining(Object days) {
    return '$days days left';
  }

  @override
  String get expires_today => 'Expires today';

  @override
  String expired_days_ago(Object days) {
    return 'Expired $days days ago';
  }

  @override
  String get no_recent_offer => 'No recent offers yet';

  @override
  String get could_not_load_offers => 'we couldn’t load offers list';

  @override
  String get could_not_load_accounts => 'we couldn’t load accounts list';

  @override
  String get hide_section => 'Hide section';

  @override
  String get hide => 'Hide';

  @override
  String get show_more_accounts => 'Show more accounts';

  @override
  String get show_more_loans => 'Show more loans';

  @override
  String get show_more_deposits => 'Show more deposits';

  @override
  String get show_more_offers => 'Show more offers';

  @override
  String get show_more_transactions => 'Show more transactions';

  @override
  String get show_more_cards => 'Show more cards';

  @override
  String get own_accounts => 'Own Accounts';

  @override
  String get within_scb => 'Within SCB';

  @override
  String get local => 'Local';

  @override
  String get new_transfer => 'New Transfer';

  @override
  String get transfer_history => 'Transfer History';

  @override
  String get transfer_disclaimer =>
      'Transfers submitted after 3:00 PM will be processed on the next business day.';

  @override
  String get schedule_transactions => 'Schedule Transactions';

  @override
  String get top_pick_for_you => 'Top Picks for You';

  @override
  String get account => 'Account';

  @override
  String get wallet => 'Wallet';

  @override
  String get mobile => 'Mobile';

  @override
  String get edit => 'Edit';

  @override
  String get view_more => 'View more';

  @override
  String get view_less => 'View less';

  @override
  String get currently_you_dn_have_any_beneficiary =>
      'Currently you don’t have any beneficiary';

  @override
  String could_not_load_beneficiaries(Object shortcut) {
    return 'we couldn${shortcut}t load beneficiaries list';
  }

  @override
  String get edit_beneficiary => 'Edit Beneficiary';

  @override
  String get save_updates => 'Save Updates';

  @override
  String get delete_beneficiary => 'Delete Beneficiary';

  @override
  String get beneficiary_nickname => 'Beneficiary Nickname';

  @override
  String get bank_name => 'Bank Name';

  @override
  String get delete => 'Delete';

  @override
  String get confirm_deletion => 'Confirm Deletion';

  @override
  String get confirm_deletion_msg =>
      'Are you sure you want to delete this beneficiary from favorite list?';

  @override
  String get beneficiary_deleted_msg => 'Beneficiary deleted successfully';

  @override
  String get beneficiary_updated_msg => 'Beneficiary list has been updated';

  @override
  String get confirm => 'Confirm';

  @override
  String get summary => 'Summary';

  @override
  String get amount => 'Debited amount';

  @override
  String get amount_required => 'Minimum transfer amount is 1';

  @override
  String get from_required => 'Select from account to proceed';

  @override
  String get to_required => 'Select to account to proceed';

  @override
  String get transfer_limits => 'Transfer Limits';

  @override
  String get date => 'Date: ';

  @override
  String get reference => 'Reference: ';

  @override
  String get schedule_transfer => 'Schedule Transfer';

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get select_account => 'Select account';

  @override
  String get transfer_successful => 'Transfer Successful!';

  @override
  String get rate => 'Rate';

  @override
  String get equal => '=';

  @override
  String get minus => '-';

  @override
  String get add_to_quick_transfer => 'Add to Quick Transfer';

  @override
  String get add_to_quick_beneficiary => 'Add to Beneficiary';

  @override
  String get nick_name => 'Nick name';

  @override
  String get note_optional => 'Notes (Optional)';

  @override
  String get account_number_less_16 => 'Account number must be 16 digits.';

  @override
  String get nick_name_required => 'Nick name required';

  @override
  String get dot => '.';

  @override
  String get activated => 'Activated';

  @override
  String get not_activated => 'Not Activated';

  @override
  String get not_registered => 'Not Registered';

  @override
  String get registration_code_invalid => 'Registration code is invalid.';

  @override
  String get note => 'Notes (Optional)';

  @override
  String get notes => 'Notes:';

  @override
  String get notes_ => 'Notes';

  @override
  String get share => 'Share';

  @override
  String get send_money_to => 'Send Money To';

  @override
  String get card => 'Card';

  @override
  String get token_activation => 'Token activation';

  @override
  String get token_activation_msg =>
      'Soft token needs to be activated first to proceed';

  @override
  String get transfer_limit_exceeded => 'Transfer limit is exceeded';

  @override
  String get update_available => 'Update Available';

  @override
  String get new_version_available =>
      'A new version is available. We recommend updating for the best experience.';

  @override
  String get update_upper_cased => 'UPDATE';

  @override
  String get update_required => 'Update Required';

  @override
  String get add => 'Add';

  @override
  String get beneficiary_added_msg => 'Beneficiary added successfully';

  @override
  String get no_beneficiaries_yet => 'No beneficiaries yet';

  @override
  String once_you_add_beneficiary_they_will_show(Object shortcut) {
    return 'Once you add a beneficiary, they${shortcut}ll show up here.';
  }

  @override
  String get no_matches_found => 'No matches found';

  @override
  String get try_search_with_different_keyboard =>
      'Try searching with different keywords.';

  @override
  String get search_ => 'Search...';

  @override
  String get nick_name_characters_error_msg =>
      'Nickname must be 2-35 characters';

  @override
  String get a_new_version_available =>
      'A new version of the app is available! Update\n  to latest version for new features and improvements.';

  @override
  String get app_no_longer_supported =>
      'Your app version is outdated and no longer supported. Please update to continue using the app.';

  @override
  String get we_could_not_load_you_list => 'We couldn’t reload your list';

  @override
  String we_could_not_load_the_list(Object shortcut) {
    return 'We couldn${shortcut}t reload the list';
  }

  @override
  String get transfer_not_available => 'Transfer not available';

  @override
  String get transfer_between_own_accounts =>
      'Transfer between own accounts is currently not available due to having single account.';

  @override
  String get cancel_transfer => 'Cancel Transfer';

  @override
  String get cancel_transfer_content =>
      'Are you sure you want to close this screen? Any entered details will be lost.';

  @override
  String get yes => 'Yes';

  @override
  String get transfer_type => 'Transfer Type';

  @override
  String get transfer_type_ => 'Transfer type';

  @override
  String get credited_amount => 'Credited amount:';

  @override
  String get own => 'Own';

  @override
  String get account_number_invalid => 'Account number/IBAN is invalid.';

  @override
  String get card_number_invalid => 'Card number is invalid.';

  @override
  String get could_not_load_transfer_history =>
      'We couldn\'t load your Transfer history';

  @override
  String get no_transfers => 'No Transfers';

  @override
  String get own_account => 'Own Account';

  @override
  String get recent_transfers => 'Recent Transfers';

  @override
  String get transfers_history => 'Transfers History';

  @override
  String get normal => 'Normal';

  @override
  String get ipn_instant => 'IPN Instant';

  @override
  String get payment_address => 'Payment Address';

  @override
  String get account_iban => 'Account/IBAN';

  @override
  String get local_transfer => 'Local Transfer';

  @override
  String get select_bank => 'Select bank';

  @override
  String get beneficiary_name => 'Beneficiary name';

  @override
  String get beneficiary_name_ => 'Beneficiary Name';

  @override
  String get bank_name_required => 'Bank name is required';

  @override
  String get beneficiary_name_required => 'Beneficiary name is required';

  @override
  String get transfer_details => 'Transfer details';

  @override
  String get repeat_transfer => 'Repeat Transfer';

  @override
  String get scheduled => 'Scheduled';

  @override
  String get amount_or_name => 'Amount or name';

  @override
  String get select_date_range => 'Select Date Range';

  @override
  String get apply => 'Apply';

  @override
  String get start_date => 'Start Date';

  @override
  String get end_date => 'End Date';

  @override
  String get request_a_card => 'Request a card';

  @override
  String get available_balance_is_insufficient =>
      'Available balance is insufficient';

  @override
  String amount_with_currency(String amount, String currency) {
    return '$amount $currency';
  }

  @override
  String card_last_4_digits(String digits) {
    return '**** $digits';
  }

  @override
  String get due_amount => 'Due Amount:';

  @override
  String get due_date => 'Due Date:';

  @override
  String get card_details => 'Card Details';

  @override
  String get pay_card => 'Pay Card';

  @override
  String get today => 'Today';

  @override
  String get last_week => 'Last week';

  @override
  String get last_month => 'Last month';

  @override
  String get last_3_months => 'Last 3 months';

  @override
  String get select_date => 'Select Date';

  @override
  String get card_transactions => 'Card transactions';

  @override
  String get card_limit => 'Card limit';

  @override
  String get no_transactions_yet => 'No transactions yet';

  @override
  String fractional_amount_part(String decimal) {
    return '.$decimal';
  }

  @override
  String get hidden_amount_asterisks => '********';

  @override
  String get we_could_not_load_your_transactions =>
      'We couldn\'t load your transactions';

  @override
  String get otp_code_sent_to_your_number =>
      'Please enter the OTP from your SCB token app.';

  @override
  String get this_fields_accept_2_char =>
      'This field accepts minimum 2 letters';

  @override
  String get transfer_error =>
      'We couldn\'t complete your transfer due to an unexpected error. Please try again later.';

  @override
  String get enable => 'Enable';

  @override
  String get disable => 'Disable';

  @override
  String get enter_password => 'Enter Password';

  @override
  String get account_details => 'Account Details';

  @override
  String get open_new_deposit => 'Open New Deposit';

  @override
  String get interest_rate => 'Interest Rate';

  @override
  String get pending_amount => 'Pending Amount';

  @override
  String get loan_details => 'Loans Details';

  @override
  String get details => 'Details';

  @override
  String get next_installment_amount => 'Next Installment Amount';

  @override
  String get next_installment_date => 'Next Installment Date';

  @override
  String get paid_installments => 'Paid Installments';

  @override
  String get remaining => 'Remaining';

  @override
  String get installment_frequency => 'Installment Frequency';

  @override
  String get fixed_rate => 'Fixed Rate';

  @override
  String get maturity_left => 'Maturity Left';

  @override
  String get collateral_type => 'Collateral Type';

  @override
  String get issued_date => 'Issued Date';

  @override
  String get na => 'N/A';

  @override
  String get loan_payments => 'Loan Payments';

  @override
  String get upcoming => 'Upcoming';

  @override
  String get paid => 'Paid';

  @override
  String get due => 'Overdue';

  @override
  String get request_cheque_book => 'Request Chequebook';

  @override
  String get services => 'Services';

  @override
  String get select_number => 'Select number';

  @override
  String get page => 'Page';

  @override
  String get fees => 'Fees';

  @override
  String get select_account_required_msg => 'Select account is required';

  @override
  String get select_leaves_error_msg => 'Select the Leaves number to proceed';

  @override
  String get need_agree_terms =>
      'You need to agree to the terms and conditions to continue.';

  @override
  String get submitted_successfully => 'Submitted Successfully!';

  @override
  String get your_cheque_request_received =>
      'Your Chequebook request has been received.';

  @override
  String get pages_cheques => 'Pages Cheques';

  @override
  String get more_details => 'More Details';

  @override
  String get request_status => 'Request status';

  @override
  String get current => 'Current';

  @override
  String get not_eligible_request_msg =>
      'You’re Not Eligible to Request a Chequebook';

  @override
  String get deposit_details => 'Deposit Details';

  @override
  String deposit_no(String number) {
    return 'Deposit no. $number';
  }

  @override
  String months_left(int number) {
    return '/$number Months';
  }

  @override
  String get redeem_account => 'Redeem Account';

  @override
  String get interest_account => 'Interest Account';

  @override
  String get payout_details => 'Payout Details';

  @override
  String account_type_with_number(String type, String number) {
    return '$type $number';
  }

  @override
  String get interest_frequency => 'Interest Frequency';

  @override
  String get blocked_amount => 'Blocked Amount';

  @override
  String percent_rate_with_type(String rate, String type) {
    return '$rate% $type rate';
  }

  @override
  String get loan_no => 'Loan no.';

  @override
  String get chequebook_details => 'Chequebook Details';

  @override
  String get used => 'Used';

  @override
  String get used_cheques => 'Used Cheques';

  @override
  String get execution_blocked => 'Execution blocked';

  @override
  String get select_service => 'Select Service';

  @override
  String get chequebook => 'Chequebook';

  @override
  String get my_products => 'My Products';

  @override
  String get products => 'Products';

  @override
  String get empty_chequebooks_msg => 'No chequebooks yet';

  @override
  String error_chequebooks_msg(Object shortcut) {
    return 'We couldn${shortcut}t load your chequebooks';
  }

  @override
  String get empty_used_cheques_msg => 'No used cheques yet';

  @override
  String error_used_cheques_msg(Object shortcut) {
    return 'We couldn${shortcut}t load your cheques';
  }

  @override
  String get loans => 'Loans';

  @override
  String get saving_account => 'Savings Account';

  @override
  String get we_could_not_load_your_loans => 'We couldn\'t load your loans';

  @override
  String get we_could_not_load_your_payments =>
      'We couldn\'t load your payments';

  @override
  String get saving_accounts => 'Saving Accounts';

  @override
  String get current_affairs => 'Current Affairs';

  @override
  String get certificates => 'Certificates';

  @override
  String get time_deposits => 'Time Deposit';

  @override
  String get deposits => 'Deposits';

  @override
  String get deposits_dashboard => 'Deposits';

  @override
  String up_to_interest_rate(double interestRate) {
    return 'Up to $interestRate%';
  }

  @override
  String get cheques => 'Cheques';

  @override
  String get not_available => 'Not Available';

  @override
  String get available => 'Available';

  @override
  String value_percent(double value) {
    return '$value%';
  }

  @override
  String get min_amount => 'Min. Amount';

  @override
  String get no_min_amount => 'No Minimum amount';

  @override
  String get debited_account => 'Debited account';

  @override
  String get no_products_found => 'No products found';

  @override
  String get amount_ => 'Amount';

  @override
  String minimum_opening_amount_is(String amount, String currency) {
    return 'Minimum opening amount is $amount $currency';
  }

  @override
  String get account_opened_successfully => 'Account Opened successfully';

  @override
  String get history => 'History';

  @override
  String get in_progress => 'In progress';

  @override
  String get rejected => 'Rejected';

  @override
  String get delivered => 'Delivered';

  @override
  String get request_date_and_time => 'Request date and time';

  @override
  String get request_no => 'Request no.';

  @override
  String get empty_requests_msg => 'No requests yet';

  @override
  String error_requests_msg(Object shortcut) {
    return 'We couldn${shortcut}t load your requests';
  }

  @override
  String get funding_details => 'Funding Details';

  @override
  String get deposit_account => 'Deposit Account';

  @override
  String get amount_only => 'Amount';

  @override
  String minimum_certificate_amount_is(String amount) {
    return 'The minimum certificate amount is $amount and its multiples';
  }

  @override
  String minimum_amount_is(String amount, String currency) {
    return 'The minimum opening amount is $amount $currency';
  }

  @override
  String minimum_with_amount_and_currency(String amount, String currency) {
    return 'Minimum $amount $currency';
  }

  @override
  String get opened_successfully => 'Opened successfully';

  @override
  String get amount_is_required => 'Amount is required';

  @override
  String get interest_account_is_required => 'Interest account is required';

  @override
  String no_products_found_type(String type) {
    return 'No $type Products Found';
  }

  @override
  String get terms_and_conditions_agreement_required =>
      'You need to agree to the terms and conditions to continue.';

  @override
  String get duration => 'Duration';

  @override
  String get frequency => 'Frequency';

  @override
  String get added => 'Added';

  @override
  String get overdue_amount => 'Overdue Amount';

  @override
  String multiple_of_minimum_amount(String amount, String currency) {
    return 'Multiple of $amount $currency';
  }

  @override
  String get debited_amount => 'Debited amount';

  @override
  String get no_results_found => 'No results found';

  @override
  String account_category_number(String categoryName, String accountId) {
    return '$categoryName - $accountId';
  }

  @override
  String get transactions_list => 'Transactions List';

  @override
  String transaction_date_format(String day, String month, String year) {
    return '$day $month $year';
  }

  @override
  String get no_accounts_found => 'No accounts found';

  @override
  String get no_cards_found => 'No cards found';

  @override
  String get no_deposit_accounts_found => 'No deposit accounts found';

  @override
  String get credit_card_payment => 'Credit Card Payment';

  @override
  String get deduct_amount_from => 'Deduct amount from';

  @override
  String get payment_amount => 'Payment amount';

  @override
  String get full_due_amount => 'Full Due Amount:';

  @override
  String get min_due_amount => 'Min Due Amount:';

  @override
  String get other_amount => 'Other Amount';

  @override
  String get transaction_limit_exceeded => 'Transaction limit exceeded';

  @override
  String get transfer_to_charity => 'Transfer to Charity';

  @override
  String get select_charity => 'Select Charity';

  @override
  String get charity => 'Charity';

  @override
  String get this_field_is_required => 'This filed is required ';

  @override
  String transaction_date_format_with_time(
      String day, String month, String year, String time) {
    return '$day $month $year $time';
  }

  @override
  String amount_must_be_greater_than_min_due_amount(String minAmount) {
    return 'Amount must be greater than $minAmount';
  }

  @override
  String get reference_ => 'Reference';

  @override
  String get date_ => 'Date';

  @override
  String get transaction_type => 'Transaction Type';

  @override
  String get iban => 'IBAN';

  @override
  String get wallet_number => 'Wallet number';

  @override
  String get mobile_number => 'Mobile number';

  @override
  String get mobile_no_is_invalid => 'Mobile number is invalid';

  @override
  String get wallet_no_is_valid => 'Wallet number is invalid';

  @override
  String get ipn_address => 'IPA Address';

  @override
  String get ipn_address_invalid => 'IPA address is invalid';

  @override
  String get savings => 'Savings';

  @override
  String get change_password => 'Change Password';

  @override
  String get change_pass_page_msg =>
      'Enter unique password. keep them confidential. you will need them for future logins.';

  @override
  String disclaimer_minimum_amount_is_and_its_multiples(
      String type, String amount) {
    return 'The minimum $type amount is $amount and its multiples';
  }

  @override
  String get deposit => 'Deposit';

  @override
  String get current_password => 'Current password';

  @override
  String get current_password_invalid => 'Current password is invalid';

  @override
  String get successful_change => 'Successful Change!';

  @override
  String get password_changed_successfully =>
      'The password is changed successfully.';

  @override
  String get login => 'Login';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get email => 'Email';

  @override
  String get website => 'Website';

  @override
  String get call_center => 'Call Center';

  @override
  String get follow_us => 'Follow Us';

  @override
  String get online_support => 'Online Support';

  @override
  String get exchange_rate_ => 'Exchange Rates';

  @override
  String last_update(String time) {
    return 'Last Update: $time';
  }

  @override
  String get currency_converter => 'Currency Converter';

  @override
  String get egp_exchange_rate => 'EGP Exchange Rate';

  @override
  String get buy => 'Buy';

  @override
  String get sell => 'Sell';

  @override
  String get selected_currency => 'Select Currency';

  @override
  String get hide_balance_prompt_title_hidden => 'Balances are now hidden';

  @override
  String get hide_balance_prompt_title_visible => 'Balances are now visible';

  @override
  String get hide_balance_prompt_subtitle =>
      'Flip your screen down to quickly hide or show balances, or tap the eye icon above your balance';

  @override
  String get got_it => 'Got it';

  @override
  String get dont_show_again => 'Don\'t show again';

  @override
  String get hide_balance_by_default => 'Hide Balance by Default';

  @override
  String cd_no(String number) {
    return 'CD No. $number';
  }

  @override
  String td_no(String number) {
    return 'TD No. $number';
  }

  @override
  String get certificate => 'Certificate';

  @override
  String get debited_account_is_required =>
      'Please select debited account first';

  @override
  String get out_side_egypt => 'Outside Egypt';

  @override
  String get out_side_egypt_number => '(+202) 19093';

  @override
  String maximum_amount_is(String amount, String currency) {
    return 'Max. $amount $currency';
  }

  @override
  String min_amount_is(String amount, String currency) {
    return 'Min. $amount $currency';
  }

  @override
  String get login_to_manage => 'Log in to manage your finances';

  @override
  String get new_password_field => 'New password';

  @override
  String get confirm_new_password_field => 'Confirm new password';

  @override
  String get we_could_not_load_your_cards => 'We couldn\'t load your cards';

  @override
  String get we_could_not_load_your_accounts =>
      'We couldn\'t load your accounts';

  @override
  String get we_could_not_load_your_cd_and_td =>
      'We couldn’t load your Certificates & Time deposits';

  @override
  String get we_could_not_load_offers => 'We couldn\'t load offers';

  @override
  String password_dn_match(Object shortcut) {
    return 'Passwords don${shortcut}t match';
  }

  @override
  String get edit_actions => 'Edit Actions';

  @override
  String get current_pass_required => 'Current password is required';

  @override
  String get ahmed => 'Ahmed';

  @override
  String get another_account => 'Another Account';

  @override
  String get are_you_sure_you_want_to_exit => 'Are you sure you want to exit?';

  @override
  String get are_you_sure_you_want_to_exit_info =>
      'Leaving now means you\'ll lose your progress and won\'t be able to pick up where \nyou left off.';

  @override
  String get request_date => 'Request date';

  @override
  String get overdue_days => 'Overdue days';

  @override
  String get frequently_transferred_to => 'Frequently transferred to';

  @override
  String get select_favorite_beneficiary => 'Select Favorite Beneficiary';

  @override
  String get maichel => 'Maichel';

  @override
  String get one_time => 'One Time';

  @override
  String get recurring => 'Recurring';

  @override
  String get select_start_date => 'Select Start Date';

  @override
  String get number_of_occurrences => 'Number of occurrences';

  @override
  String get daily => 'Daily';

  @override
  String get weekly => 'Weekly';

  @override
  String get monthly => 'Monthly';

  @override
  String get execution_date => 'Execution Date';

  @override
  String get occurrences => 'Occurrences';

  @override
  String times(String times) {
    return '$times Times';
  }

  @override
  String get date_of_submission => 'Date of submission';

  @override
  String get date_of_execution => 'Date of execution';

  @override
  String maximum_number_of_recurring_is(String max) {
    return 'Maximum number of recurring is $max';
  }

  @override
  String account_type(String accountType) {
    return '$accountType Account';
  }

  @override
  String get no_beneficiaries_added => 'No beneficiaries added';

  @override
  String get you_can_add_a_beneficiary_after_making_a_transfer_for_quicker_access_next_time =>
      'You can add a beneficiary after making a transfer for quicker access next time.';

  @override
  String get branches => 'Branches';

  @override
  String get atm => 'ATM';

  @override
  String get list_view => 'List View';

  @override
  String get selected => 'Selected';

  @override
  String get direction => 'Direction';

  @override
  String get branches_list => 'Branches List';

  @override
  String get atm_list => 'ATM List';

  @override
  String open_till(String time) {
    return 'Open $time';
  }

  @override
  String kilometers_away(String distance) {
    return '$distance Km away';
  }

  @override
  String transfer_amount(String? optional) {
    return '${optional}Transfer amount:';
  }

  @override
  String transfer_date(String? optional) {
    return '${optional}Transfer date:';
  }

  @override
  String get next => 'Next';

  @override
  String get new_text => 'New';

  @override
  String get cancel_schedule_transfer => 'Cancel Schedule Transfer';

  @override
  String get schedule_details => 'Schedule Details';

  @override
  String get schedule_transfer_empty_message =>
      'You don\'t have any scheduled transfers to display';

  @override
  String get schedule_cancellation_dialog_title => 'Schedule Cancellation';

  @override
  String get schedule_cancellation_dialog_content =>
      'By canceling this scheduled transfer, all upcoming transfers won\'t be executed.';

  @override
  String get cancel_schedule => 'Cancel Schedule';

  @override
  String get interest_rate_is_required => 'Interest rate is required';

  @override
  String get select_currency => 'Select Currency';

  @override
  String get forget_pass_page_msg =>
      'To reset your password, please verify your details.\nWe\'ll send a code to your registered mobile number.';

  @override
  String get scb_card_num => 'Card number';

  @override
  String get card_pin_num => 'Card Pin Number';

  @override
  String get exp_date => 'MM/YY';

  @override
  String get pin_msg_atm => 'This Pin is the password you use on the ATM';

  @override
  String get invalid_card_number => 'Invalid card number';

  @override
  String get password_incorrect => 'Password is not correct';

  @override
  String get successful_reset => 'Successful reset!';

  @override
  String get password_reset_successfully =>
      'The password is reset successfully.';

  @override
  String get some_data_invalid =>
      'Some of the entered data is invalid, please re-check and try again.';

  @override
  String amount_must_be_less_than_max_due_amount(String maxAmount) {
    return 'Amount must be less than $maxAmount';
  }

  @override
  String get cant_show_nearby_branches_atm =>
      'Can\'t show nearby branches/ATMs';

  @override
  String get cant_show_nearby_branches_atm_info =>
      'We couldn\'t access your location. To view nearby branches and ATMs, please enable location services in your device settings.';

  @override
  String get enable_location => 'Enable Location';

  @override
  String x_results_found(int count) {
    return '$count results found';
  }

  @override
  String get deactivate => 'Deactivate';

  @override
  String get session_expired_message =>
      'Session has been expired, Please log in again to continue.';

  @override
  String get session_expired => 'Session expired';

  @override
  String get connection_timeout => 'Connection Timeout';

  @override
  String get compromised_device_message =>
      'This device is rooted or jail-broken. For security reasons, you should not use this app. It will not work.';

  @override
  String get compromised_device_title => 'Security Alert';

  @override
  String get swift_code => 'Swift Code';

  @override
  String get iban_number => 'IBAN Number';

  @override
  String get copied_successfully => 'Copied successfully';

  @override
  String disclaimer_cd(String amount) {
    return 'The minimum certificate amount is $amount';
  }

  @override
  String disclaimer_td(String amount) {
    return 'The minimum Time Deposit amount is $amount';
  }

  @override
  String get empty_string => '';

  @override
  String get select_leaves_number_to_proceed =>
      'Select the Leaves number to proceed';

  @override
  String get show_session_overlay => 'Show session overlay';

  @override
  String token_expires_at(Object time) {
    return 'Token Expires At: $time';
  }

  @override
  String expires_in(Object time) {
    return 'Expires In: \$$time seconds';
  }

  @override
  String eligible_for_refresh(Object value) {
    return 'Eligible for Refresh: $value';
  }

  @override
  String refreshing(Object value) {
    return 'Refreshing: $value';
  }

  @override
  String get no => 'No';

  @override
  String get idle => 'Idle';

  @override
  String get authenticate_to_complete_setup => 'Authenticate to complete setup';

  @override
  String get authenticate_to_login => 'Authenticate to login';

  @override
  String get biometric_disabled_for_device_title =>
      'Biometric authentication disabled';

  @override
  String get biometric_disabled_for_device_message =>
      'We have removed biometric login for this device because we noticed a login from another device.';

  @override
  String x_leaves(int number) {
    return '$number Leaves';
  }

  @override
  String get no_more_transfer_to_display => 'No more transfers to display';

  @override
  String get life_board => 'Lifeboard';

  @override
  String get please_try_again_later => 'Please try again later';

  @override
  String get otp_code_sent_to_your_number_new =>
      'OTP code sent to your registered mobile number.';

  @override
  String get life_board_onboarding_sub_text =>
      'Easily view all your upcoming events in one smart board. Never miss a moment, deadline, or opportunity';

  @override
  String get discover => 'Discover';

  @override
  String get add_new_event_title => 'Add New Event';

  @override
  String get event_details_title => 'Event Details';

  @override
  String get event_details_subtitle =>
      'Please enter the event name and select the date to create your new event.';

  @override
  String get event_name_hint => 'Event name';

  @override
  String get event_type_hint => 'Event type';

  @override
  String get select_type_hint => 'Select Event Type';

  @override
  String get event_date_hint => 'Event date';

  @override
  String get event_note_hint => 'Note (Optional)';

  @override
  String get event_added_title => 'Event Added!';

  @override
  String get event_added_message => 'Your event is added successfully';

  @override
  String get done_button => 'Done';

  @override
  String get this_field_required => 'This field is required';

  @override
  String get update_event_button => 'Update Event';

  @override
  String get delete_event_button => 'Delete Event';

  @override
  String get confirmDeletionTitle => 'Confirm Deletion';

  @override
  String get confirmDeletionSubtitle =>
      'Are you sure you want to delete this event?';

  @override
  String get total_earning => 'Total Earning';

  @override
  String get total_dues => 'Total Dues';

  @override
  String get monthly_overview => 'Month Overview';

  @override
  String get never_miss_thing => 'Never miss a thing!';

  @override
  String get check_your_events => 'Check your upcoming events now';

  @override
  String get click_to_discover => 'Click to discover';

  @override
  String you_have_events(int count) {
    return 'You have $count events today';
  }

  @override
  String today_with_date(String date) {
    return 'Today, $date';
  }

  @override
  String get select_year => 'Select Year';

  @override
  String get could_not_load_events => 'We couldn\'t reload your events';

  @override
  String get you_have_no_events => 'You don\'t have any events for this month';

  @override
  String month_year(String month, String year) {
    return '$month $year';
  }

  @override
  String get welcome_to_lifeboard => 'Welcome to';

  @override
  String get add_new_scheduled_transfer => 'Add New Scheduled Transfer';

  @override
  String get birthday => 'Birthday';

  @override
  String get anniversary => 'Anniversary';

  @override
  String get other => 'Other';

  @override
  String get app_language => 'App Language';

  @override
  String get locale_language => 'English';

  @override
  String get english => 'English';

  @override
  String get arabic => 'العربية';

  @override
  String get total_available_balance => 'Total Available Balance';

  @override
  String get deactivate_biometric_login => 'Deactivate Biometric Login';

  @override
  String get deactivate_biometric_login_msg =>
      'Are you sure you want to deactivate biometric login?';

  @override
  String get enable_biometric => 'Enable Biometric';

  @override
  String get biometric_login_deactivated_successfully =>
      'Biometric Login Deactivated Successfully';

  @override
  String get biometric_activated_successfully =>
      'Biometric activated successfully';

  @override
  String get biometric_activation_failed => 'Biometric activation failed';

  @override
  String get biometric_deactivation_failed => 'Biometric deactivation failed';

  @override
  String get face_id_fingerprint => 'Face ID/Fingerprint';

  @override
  String get january => 'Jan';

  @override
  String get february => 'Feb';

  @override
  String get march => 'Mar';

  @override
  String get april => 'Apr';

  @override
  String get may => 'May';

  @override
  String get june => 'Jun';

  @override
  String get july => 'Jul';

  @override
  String get august => 'Aug';

  @override
  String get september => 'Sep';

  @override
  String get october => 'Oct';

  @override
  String get november => 'Nov';

  @override
  String get december => 'Dec';

  @override
  String get receive_cd_interest => 'Receive CD Interest';

  @override
  String get receive_td_interest => 'Receive TD Interest';

  @override
  String get pay_loan_due => 'Pay Loan Due';

  @override
  String get pay_credit_card_due => 'Pay Credit Card Due';

  @override
  String get event_updated_successfully => 'Event updated successfully';

  @override
  String get event_deleted_successfully => 'Event deleted successfully';

  @override
  String weeks_left(int number) {
    return '/$number Weeks';
  }

  @override
  String get maximum_limit_reached => 'Maximum Limit Reached';

  @override
  String maximum_limit_reached_message(int number) {
    return 'You can select up to $number quick actions only. To add a new one, please deselect an existing item.';
  }

  @override
  String get minimum_limit_reached => 'Minimum Limit Not Reached';

  @override
  String minimum_limit_reached_message(int number) {
    return 'You need to select at least $number quick actions to continue. Please choose more to proceed.';
  }

  @override
  String you_have_events_today(int number) {
    return 'You have $number events today';
  }

  @override
  String get soft_token_welcome_msg =>
      'Welcome to token activation you will make it in few steps';

  @override
  String get soft_token_activation_step_one_title =>
      'Get the Registration Code';

  @override
  String get soft_token_activation_step_one_sub_title =>
      'Open the SCB Token app, follow the instructions and copy the registration code';

  @override
  String get soft_token_activation_step_two_title => 'Paste the code';

  @override
  String get soft_token_activation_step_two_sub_title =>
      'Return here to SCB mobile to paste the registration code';

  @override
  String get soft_token_activation_step_three_title => 'Complete Activation';

  @override
  String get soft_token_activation_step_three_sub_title =>
      'Click continue on the token app then back here to complete activation';

  @override
  String get view_demo => 'View Demo';

  @override
  String get soft_token_support => 'Need support with token activation?';

  @override
  String step_of(Object currentStep, Object totalSteps) {
    return 'Step $currentStep of $totalSteps';
  }

  @override
  String get get_registration_code => 'Enter Registration Code';

  @override
  String get get_your_registration_code =>
      'Open the soft token app, copy the registration code and paste it here';

  @override
  String get soft_token_get_registration_code_msg =>
      'Open the SCB Token app, copy the registration code, and return here to paste it.';

  @override
  String get complete_activation => 'Complete Activation';

  @override
  String get complete_activation_msg =>
      'Continue on your soft token app the following process';

  @override
  String get scb_token_app => 'SCB Token app';

  @override
  String get open_app => 'Open app';

  @override
  String get soft_token_app_tapped_confirmation =>
      'Yes, I\'ve tapped \"Continue\" in the SCB Token app';

  @override
  String get soft_token_app_tapped_confirmation_msg =>
      'This confirms you\'ve finished setup inside SCB Token app.';

  @override
  String get soft_token_activation_in_few_steps =>
      'Token activation in few steps';

  @override
  String get ok_got_it => 'Okay, got it';

  @override
  String get download_scb_soft_token_app => 'Download Soft Token App';

  @override
  String get copy_following_code => 'Copy the Following';

  @override
  String get download_and_install_now => 'Download and Install now';

  @override
  String get copy_following_code_msg =>
      'Please insert the activation code and serial number in the soft token app';

  @override
  String get download_scb_soft_token_app_msg =>
      'Use the SCB Token app to activate your token.';

  @override
  String get soft_token_activation_confirmation_error_msg =>
      'Please confirm token activation before continuing.';

  @override
  String get soft_token_closing_confirmation_msg =>
      'Closing will discard your changes';

  @override
  String get go_to_scb_app => 'Go to SCB token app';
}
