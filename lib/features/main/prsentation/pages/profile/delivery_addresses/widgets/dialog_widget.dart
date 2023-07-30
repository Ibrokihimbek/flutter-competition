import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';

class LoadingDialog extends StatelessWidget {
  final Widget widget;

  const LoadingDialog({required this.widget, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).cardColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Builder(
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 200, height: 200, child: widget),
              CircularProgressIndicator(color: ThemeColors.dark.black),
            ],
          );
        },
      ),
    );
  }
}
