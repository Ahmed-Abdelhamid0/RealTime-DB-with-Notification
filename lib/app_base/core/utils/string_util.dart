import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:realtime_ex/app_base/core/utils/double_utils/double_utils.dart';
import 'package:realtime_ex/app_base/core/utils/list_utils.dart';
import 'package:realtime_ex/app_base/core/utils/reg_ex_utils/reg_ex_utils.dart';
import 'package:realtime_ex/app_base/core/utils/transfer_constants.dart';
import 'package:realtime_ex/app_base/shared/constants/ui_constants/ui_constants.dart';



class StringUtil {
  static String getInitials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) {
      return '';
    }
    if (parts.length == 1) {
      return parts[0].substring(0, 2).toUpperCase();
    }

    return (parts[0][0] + parts[1][0]).toUpperCase();
  }

  static String getInitialsChar(String name) {
    name = name.trim();

    return name.isNotEmpty ? name[0].toUpperCase() : '';
  }

  static String generateRandomId(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final rand = Random();

    return List.generate(length, (index) => chars[rand.nextInt(chars.length)]).join();
  }
}

extension StringExtension on String {
  DateTime toDate() {
    final formatter = DateFormat('dd MMM yyyy');
    return formatter.parse(this);
  }

  String get asRouteName => split('.').last;

  String get obscured => '*' * length;

  String maskAccountNumber([int maskLength = 4, int showLength = 4]) {
    try {
      return '${'*' * maskLength}${substring(length - showLength)}';
    } catch (e) {
      return this;
    }
  }

  String maskWithX({int showLength = 4, bool avoidMasking = false}) {
    try {
      if (length <= showLength || !isDigitsOnly || avoidMasking) {
        return this;
      }
      final maskedString = '${'X' * showLength} ${substring(length - showLength)}';
      return maskedString;
    } catch (e) {
      return this;
    }
  }

  String get toMoneyFormat => UIConstants.moneyFormatter.format(this);

  /// Parses this string as a money amount using the current locale and returns it formatted via [UIConstants.moneyFormatter].
  /// Examples: '1,234.5' -> '1,234.50'. If parsing fails, formats 0.0 -> '0.00'.
  String get toMoneyFormatFromString => toDoubleFromMoneyString.toMoneyFormat;

  double get toDoubleFromMoneyString {
    try {
      return UIConstants.moneyFormatter.parse(this).toDouble();
    } catch (e) {
      return 0.0;
    }
  }

  double get toDoubleFromMoneyStringWithoutCurrency {
    try {
      final value = replaceAll(RegexUtils.alphaOnly, '').removeEmptySpaces;
      return value.toDoubleFromMoneyString;
    } catch (e) {
      return 0.0;
    }
  }

  String get removeEmptySpaces => replaceAll(' ', '');

  String get toSpacedAccountNumber => characters.toList().chunk(n: 4).map((e) => e.join('')).join(' ');

  String toSentenceCase() {
    if (isEmpty) {
      return '';
    }
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  /// Sanitize the initial values for text fields
  String sanitizeWithFormatters(List<TextInputFormatter> formatters) {
    TextEditingValue value = TextEditingValue(
      text: this,
      selection: TextSelection.collapsed(offset: length),
    );

    for (final formatter in formatters) {
      value = formatter.formatEditUpdate(value, value);
    }
    return value.text;
  }

  String get firstLettersOfWords {
    if (isEmpty) {
      return '';
    }

    final words = split(' ').where((word) => word.isNotEmpty).toList();
    if (words.isEmpty) {
      return '';
    }

    // Take only first two words if there are more
    final firstTwoWords = words.length > 2 ? words.sublist(0, 2) : words;
    return firstTwoWords.map((word) => word[0]).join();
  }

  bool get hasHttp {
    if (isEmpty) {
      return false;
    }

    return startsWith('http') || startsWith('https');
  }

  /// Masks the name, leaving the first word as is, and masking the second and third words (if present).
  String get maskedName {
    final words = trim().split(RegExp(r'\s+'));
    if (words.isEmpty) {
      return '';
    }
    if (words.length == 1) {
      return words.first;
    }
    final masked = <String>[];
    masked.add(words.first);
    for (var i = 1; i < words.length; i++) {
      final word = words[i];
      if (word.isNotEmpty) {
        masked.add(word[0] + '*' * (word.length - 1));
      }
    }

    return masked.join(' ');
  }

  bool get isDecimalPointOnly => isNotEmpty && startsWith('.') && !contains(RegexUtils.decimalPointOnly);
  String get accountNamePrefix => split(' ').first;

  bool get isNotEGP => this != TransferConstants.egpCurrency;

  /// Checks if the string contains only digits (0-9)
  bool get isDigitsOnly => isEmpty ? false : RegexUtils.digitsOnly.hasMatch(this);

  String get withLineBreaks {
    final words = split(' ');
    if (words.length > 1 && words.length < 3) {
      return words.join('\n');
    } else if (words.length > 2) {
      return '${words.first} \n ${words.sublist(1).join(' ')}';
    }
    return this;
  }
}

extension NullStringExtension on String? {
  String get orEmpty => this ?? '';

  bool get isNullOrEmpty => this == null || this!.isEmpty;

  String? get accountNumberPrefix => this?.substring(0, 4);
  String? get accountNamePrefix => this?.split(' ').first;
}
