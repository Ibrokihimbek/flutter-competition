import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:gap/gap.dart';

Future customShowDialog({
  String content = '',
  required BuildContext context,
  required String title,
  required String firstButtonName,
  required String secondButtonName,
  required VoidCallback firstButtonTap,
  required VoidCallback secondButtonTap,
}) => showDialog(
    context: context,
    builder: (_) => Dialog(
        backgroundColor: Colors.white,
        insetPadding: AppUtils.kPaddingAll16,
        child: Padding(
          padding: AppUtils.kPaddingAll16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: context.textStyle.boldBody,
              ),
              Text(
                content,
                textAlign: TextAlign.center,
                style: context.textStyle.regularFootNote.copyWith(
                  color: ThemeColors.light.mainBlack,
                ),
              ),
              const Gap(16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(ThemeColors.light.white),
                      ),
                      onPressed: firstButtonTap,
                      child: Center(
                        child: Text(
                          firstButtonName,
                          style: context.textStyle.boldSubHeadline.copyWith(
                            color: ThemeColors.light.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: secondButtonTap,
                      child: Center(
                        child: Text(
                          secondButtonName,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
  );
