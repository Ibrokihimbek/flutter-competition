import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_competition/core/extension/date_parse_extension.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';

class OrderTimerWidget extends StatefulWidget {

  const OrderTimerWidget({
    super.key,
    required this.orderCreatedAt,
  });
  final String orderCreatedAt;

  @override
  State<OrderTimerWidget> createState() => _OrderTimerWidgetState();
}

class _OrderTimerWidgetState extends State<OrderTimerWidget> {
  late Timer? _timer;
  late String _timerText = '--:--';

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        final DateTime time = (widget.orderCreatedAt).dateTimeFormat;
        setState(() {
          _timerText = formatDDHHMMSS(DateTime.now().difference(time));
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Text(
      _timerText,
      style: context.textStyle.labelMedium,
    );

  String formatDDHHMMSS(Duration duration) {
    final int days = duration.inDays;
    final int hours = duration.inHours.remainder(24);
    final int minutes = duration.inMinutes.remainder(60);
    final String daysStr = (days).toString().padLeft(2, '0');
    final String hoursStr = (hours).toString().padLeft(2, '0');
    final String minutesStr = (minutes).toString().padLeft(2, '0');
    final String secondsStr = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$daysStr:$hoursStr:$minutesStr:$secondsStr';
  }
}
