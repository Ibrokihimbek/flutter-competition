import 'package:intl/intl.dart';

extension ParseString on DateTime? {
  String formatDate() {
    if (this == null) return '';
    return DateFormat('dd.MM.yyyy').format(this!);
  }

  String formatDateTime() {
    if (this == null) return '';
    return DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(this!);
  }
}

extension ParseExtension on String {
  String date() {
    if (isEmpty) return '';
    final int duration = DateTime.now().hour - DateTime.now().toUtc().hour;
    final DateTime date = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(this);
    return DateFormat('dd.MM.yyyy').format(
      date.add(Duration(hours: duration)),
    );
  }

  DateTime get dateTimeFormat => DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(this).add(
      Duration(hours: DateTime.now().hour - DateTime.now().toUtc().hour));


  String dateTime() {
    if (isEmpty) return '';
    final int duration = DateTime.now().hour - DateTime.now().toUtc().hour;
    final DateTime date = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(this);
    return DateFormat('dd.MM.yyyy HH:mm').format(
      date.add(Duration(hours: duration)),
    );
  }

  String orderTimeFormatter() {
    if (isEmpty) return '';
    final int duration = DateTime.now().hour - DateTime.now().toUtc().hour;
    final DateTime date = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(this);
    return DateFormat('dd - MMMM HH:mm').format(
      date.add(Duration(hours: duration)),
    );
  }

  String dateTime1() {
    if (isEmpty) return '';
    final int duration = DateTime.now().hour - DateTime.now().toUtc().hour;
    final DateTime date = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(this);
    return DateFormat('dd.MM.yyyy').format(
      date.add(Duration(hours: duration)),
    );
  }

  String dateTime2() {
    if (isEmpty) return '';
    final int duration = DateTime.now().hour - DateTime.now().toUtc().hour;
    final DateTime date = DateFormat('MM.dd.yyyy').parse(this);
    return DateFormat('yyyy-MM-dd').format(
      date.add(Duration(hours: duration)),
    );
  }

  String time1() {
    if (isEmpty) return '';
    final int duration = DateTime.now().hour - DateTime.now().toUtc().hour;
    final DateTime date = DateFormat('HH:mm').parse(this);
    return DateFormat('HH:mm').format(
      date.add(Duration(hours: duration)),
    );
  }

  String time() {
    if (isEmpty) return '';
    final int duration = DateTime.now().hour - DateTime.now().toUtc().hour;
    final DateTime date = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(this);
    return DateFormat('HH:mm').format(
      date.add(Duration(hours: duration)),
    );
  }

  String get htmlToText => Bidi.stripHtmlIfNeeded(this);
}
