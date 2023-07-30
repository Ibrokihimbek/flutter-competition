import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';

Future customWarningDialog({
  String content = '',
  required BuildContext context,
  required String title,
  required String buttonName,
  required VoidCallback onTap,
}) => showDialog(
    context: context,
    builder: (_) => Dialog(
        child: Padding(
          padding: AppUtils.kPaddingAll16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: context.textStyle.boldBody,
              ),
              content.isNotEmpty ? AppUtils.kBoxHeight8 : const SizedBox(),
              Text(
                content,
                textAlign: TextAlign.center,
                style: context.textStyle.regularFootNote.copyWith(
                  color: ThemeColors.light.mainBlack,
                ),
              ),
              AppUtils.kBoxHeight16,
              ElevatedButton(
                onPressed: onTap,
                child: Center(
                  child: Text(
                    buttonName,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
  );
