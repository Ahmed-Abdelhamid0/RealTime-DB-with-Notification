
import 'package:intl/intl.dart';
import 'package:realtime_ex/app_base/core/local/app_local/app_local.dart';

extension DateExtensions on DateTime {
  String toMonthYearString([String? locale]) {
    final formatter = DateFormat('MM/yy', locale);

    return formatter.format(this);
  }

  String toMonthString([String? locale]) {
    final formatter = DateFormat('MMM', locale);

    return formatter.format(this);
  }

  String get toTransactionDate {
    final dayAndYear = DateFormat('dd - yyyy').format(this).split(' - ');

    return AppLocale.text.transaction_date_format(dayAndYear[0], toMonthString(AppLocale.locale), dayAndYear[1]);
  }

  String get toTransactionDateWithTime {
    final dayAndYear = DateFormat('dd - yyyy').format(this).split(' - ');
    final hourAndMin = DateFormat('hh:mm').format(this);
    final period = DateFormat('a', AppLocale.locale).format(this);
    final formattedTime = '$hourAndMin $period';

    return AppLocale.text.transaction_date_format_with_time(
      dayAndYear.first,
      toMonthString(AppLocale.locale),
      dayAndYear.last,
      formattedTime,
    );
  }

  int get toSecondsSinceEpoch => toLocal().millisecondsSinceEpoch ~/ 1000;

  String get toTransactionDateString => DateFormat('dd MMM yyyy').format(this);

  String get toTransactionDateStringWithLocale => DateFormat('dd MMM yyyy', AppLocale.locale).format(this);

  String get toTransactionDayMonth => DateFormat('dd MMM', AppLocale.locale).format(this);

  DateTime get toTransactionDateTimeFormate => DateFormat('dd MMM yyyy').parse(toTransactionDateString);

  bool isSameDay(DateTime other) => year == other.year && month == other.month && day == other.day;

  String formatDateWithTodayCheck() {
    final arabicMonth = DateFormat.MMM(AppLocale.locale).format(this);

    final day = this.day.toString().padLeft(2, '0');

    final year = this.year.toString();

    return '$day $arabicMonth $year';
  }

  /// Formats date as "8:00 AM, 10 Sep 2025" in English or "8:00 صباحًا، 10 سبتمبر 2025" in Arabic
  String get toTotalBalanceOverviewFormat {
    if (AppLocale.locale == 'ar') {
      // For Arabic: time period in Arabic, but day/year in English
      final timeFormat = DateFormat('h:mm', 'en').format(this);
      final arabicTimePeriod = DateFormat('a', 'ar').format(this);
      final day = DateFormat('d', 'en').format(this);
      final month = DateFormat('MMM', 'ar').format(this);
      final year = DateFormat('yyyy', 'en').format(this);

      return '$timeFormat $arabicTimePeriod، $day $month $year';
    } else {
      // For English: standard format
      final timeFormat = DateFormat('h:mm a', 'en').format(this);
      final dateFormat = DateFormat('d MMM yyyy', 'en').format(this);

      return '$timeFormat, $dateFormat';
    }
  }
}
