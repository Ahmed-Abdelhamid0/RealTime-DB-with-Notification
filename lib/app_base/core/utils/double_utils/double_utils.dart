import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:realtime_ex/app_base/core/local/app_local/app_local.dart';
import 'package:realtime_ex/app_base/shared/constants/ui_constants/ui_constants.dart';

extension SplitDouble on double {
  String get toMoneyFormat => UIConstants.moneyFormatter.format(this);

  String get toMoneyFormatWithoutDecimal => UIConstants.moneyFormatterWithoutDecimal.format(this);

  // Check if the decimal part is meaningful (not zero)
  String get toSmartMoneyFormat {
    final decimalPart = this - truncate();

    // If decimal part is zero or very close to zero (handling floating point precision)
    if (decimalPart.abs() < 0.001) {
      return UIConstants.moneyFormatterWithoutDecimal.format(this);
    } else {
      return UIConstants.moneyFormatter.format(this);
    }
  }

  String get toExactMoneyFormat {
    // Truncate to exactly 2 decimal places without rounding
    final truncated = (this * 100).truncate() / 100;

    return UIConstants.moneyFormatter.format(truncated);
  }

  String toFixDecimalsWithOutRound({int decimals = 4}) {
    final factor = math.pow(10, decimals);
    final truncated = (this * factor).truncate() / factor;

    final formatter = NumberFormat.decimalPattern();
    formatter.minimumFractionDigits = decimals;
    formatter.maximumFractionDigits = decimals;

    return formatter.format(truncated);
  }

  bool get hasMinAmount => this > 0;

  String get toMinAmountLabel => this > 0 ? AppLocale.text.min_amount : AppLocale.text.no_min_amount;
}
