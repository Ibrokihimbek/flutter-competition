import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) => Center(
      child: Platform.isAndroid
          ? CircularProgressIndicator(
              color: ThemeColors.light.primaryColor,
              strokeWidth: 3,
            )
          : const CupertinoActivityIndicator(radius: 12),
    );
}
