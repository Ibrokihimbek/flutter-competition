import 'dart:io';

import 'package:intl/intl.dart';

sealed class BaseFunctions {
  BaseFunctions._();

  static String moneyFormat(num number) {
    final isNegative = number.isNegative;
    String result = '0';
    result = NumberFormat().format(number.abs()).split(',').join(' ');
    return isNegative ? '-$result' : result;
  }

  static String cardFormat({required String cardNumber}) {
    final String formattedString = cardNumber.replaceAllMapped(
      RegExp('.{4}'),
      (match) => '${match.group(0)} ',
    );
    return formattedString;
  }

  static String moneyFormatSymbol(num number) {
    final isNegative = number.isNegative;
    String result = '0';
    result = NumberFormat().format(number.abs()).split(',').join(' ');
    return "${isNegative ? "-$result" : result} ${"sum"}";
  }

  static String getDefaultLocale() {
    final String defaultSystemLocale = Platform.localeName;
    switch (defaultSystemLocale.split('_').first) {
      case 'ru':
        return 'ru';
      case 'en':
        return 'en';
      case 'uz':
        return 'uz';
      default:
        return 'ru';
    }
  }

  static String dateFormatter(String str) {
    final DateTime date = DateFormat('yyyy-MM-dd HH:mm:ss').parse(str);
    return DateFormat('d MMMM yyyy').format(date);
  }

  static String formatCreateOrderTime(DateTime dateTime) {
    final day = DateFormat.d().format(dateTime);
    final mouth = DateFormat.MMMM().format(dateTime);
    final hour = DateFormat.jm().format(dateTime);
    return '$day $mouth - $hour';
  }

  static String formatCompleteOrderTime(DateTime dateTime) {
    final day = DateFormat.d().format(dateTime);
    final mouth = DateFormat.MMMM().format(dateTime);
    final year = DateFormat.y().format(dateTime);
    return '$day $mouth $year';
  }

  static String timeFormatter(String str) {
    final DateTime date = DateFormat('yyyy-MM-dd HH:mm:ss').parse(str);
    return DateFormat('HH:mm').format(date);
  }

  static String addressFormatter(String address) {
    final String finished = address.replaceAll('ʻ', "'");
    return finished;
  }
}
