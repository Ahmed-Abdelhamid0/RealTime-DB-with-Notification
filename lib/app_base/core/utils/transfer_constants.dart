import 'package:intl/intl.dart';

class TransferConstants {
  // Const params
  static const int collapsedLength = 5;
  static const int amountLength = 14;
  static const int integerDigits = 9;
  static const int decimalDigits = 2;
  static const int groupDigits = 3;
  static const int collapsedAnimationDuration = 300;
  static const double collapsedHalfTurn = 0.5;
  static const double collapsedTurn = 1;
  static const double bottomSheetFraction = 0.65;
  static const double slideFraction = 0.3;
  static const int moreNavIndex = 3;
  static const int successStatusMsgDuration = 3;
  static const int editBeneficiaryFieldMaxLength = 35;
  static const int editBeneficiaryFieldMinLength = 2;
  static const String egpCurrency = 'EGP';
  static const String transactionTimestampFormat = 'd MMM y h:mm a';
  static NumberFormat currencyFormatter = NumberFormat('#,##0.00', 'en_US');
  static String timestampFormatter = 'yyyy-MM-dd HH:mm:ss';
  static const String currencyPattern = '#,###,###.00';
  static const String currencyLocal = 'en_US';
  static const String currencyInputFormatter = '0.00';
  static const int transferHistoryShortPageSize = 5;
  static const int transferHistoryPageSize = 20;
  static const double charityBottomSheetFraction = 0.8;
  static const double accountsBottomSheetFraction = 0.5;

  static const double maxDraggableSheetSizeForItemsAboveFour = 0.85;
  static const double minDraggableSheetSizeForItemsBelowFlour = 0.6;

  static const minLimitPerTransaction = 1.0;

  // Error messages
  static const String beneficiariesFailed = 'Beneficiaries failed';
  static const String exception = 'Exception: ';

  // Analytics constants
  static const String transferHistoryScreenName = 'TransferHistoryPage';
  static const String searchByDate = 'TransferHistorySearchByDate';
  static const String searchByAmountOrName = 'TransferHistorySearchByAmountOrName';
  static const String startDate = 'start_date';
  static const String endDate = 'end_date';
  static const String amountOrName = 'amount_or_name';

  static const double zeroAmount = 0.0;
  static const double minimumAmount = 1.00;
  static const double maxAmount = 100000000;
  static const String ipaAddressConstant = '@instapay';
  static const int minAccountLength = 6;
  static const int maxAccountLength = 35;
  static const int maxAccountLengthForOtherRecipient = 16;
  static const String currencyRate = '1';
  static const String ipnFeatureFlagCode = 'TRA-SCB-157';

  // Max frequent transfers
  static const int maxFrequentItems = 5;
}
