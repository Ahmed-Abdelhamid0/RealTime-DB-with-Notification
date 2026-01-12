import 'package:intl/intl.dart';
import 'package:realtime_ex/app_base/core/local/app_local/app_local.dart';

class DateUtilsHelper {
  static bool isBetweenOrSame(DateTime date, DateTime startDate, DateTime endDate) =>
      !date.isBefore(startDate) && !date.isAfter(endDate);

  static String formatTimestampMilliseconds(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('dd MMM yyyy').format(date);
  }

  static String formatTimestampDateTime(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('dd MMM yyyy, HH:mm').format(date);
  }

  static String formatDateTime12(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    return DateFormat('d MMM yyyy h:mm a').format(date);
  }

  static String formatCompactDate(int compactDate) {
    final dateString = compactDate.toString();
    if (dateString.length != 8) {
      return '';
    }

    final year = int.parse(dateString.substring(0, 4));
    final month = int.parse(dateString.substring(4, 6));
    final day = int.parse(dateString.substring(6, 8));

    final date = DateTime(year, month, day);

    return DateFormat('dd MMM yyyy').format(date);
  }

  static String formatTimestamp(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return DateFormat('dd MMM yyyy').format(date);
  }

  static String getRemainingDays(int expiryTimestamp) {
    final expiryDate = DateTime.fromMillisecondsSinceEpoch(expiryTimestamp * 1000);
    final now = DateTime.now();
    final daysRemaining = expiryDate.difference(now).inDays;

    if (daysRemaining > 0) {
      return daysRemaining == 1
          ? AppLocale.text.one_day_remaining('$daysRemaining')
          : (daysRemaining >= 3 && daysRemaining <= 10)
              ? AppLocale.text.days_remaining('$daysRemaining')
              : AppLocale.text.days_v2_remaining('$daysRemaining');
    } else if (daysRemaining == 0) {
      return AppLocale.text.expires_today;
    } else {
      return AppLocale.text.expired_days_ago('${daysRemaining.abs()}');
    }
  }

  static String formatTransactionDate(int epochSeconds) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(epochSeconds * 1000);
    final dateOnly = DateTime(dateTime.year, dateTime.month, dateTime.day);

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    if (dateOnly.year == today.year) {
      final dayMonth = DateFormat('dd MMM', AppLocale.locale).format(dateOnly);
      return dayMonth;
    } else {
      return DateFormat('dd MMM yyyy', AppLocale.locale).format(dateOnly);
    }
  }

  static String formatTimestampMillisecondsLocale(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final arabicMonth = DateFormat.MMM(AppLocale.locale).format(date);

    final day = date.day.toString().padLeft(2, '0');

    final year = date.year.toString();

    return '$day $arabicMonth $year';
  }
  static String formatExpiryDate(int expiryTimestamp) {
    final expiryDate = DateTime.fromMillisecondsSinceEpoch(expiryTimestamp * 1000);
    return DateFormat('dd/MM/yyyy').format(expiryDate);
  }
}
