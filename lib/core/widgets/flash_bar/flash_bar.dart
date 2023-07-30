import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';

Future<bool?> flashBarWidget<T>({
  required BuildContext context,
  required String title,
  required String content,
}) => context.showFlash<bool>(
    barrierDismissible: true,
    duration: const Duration(seconds: 4),
    builder: (_, controller) => FlashBar(
      position: FlashPosition.top,
      controller: controller,
      behavior: FlashBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        side: BorderSide(
          color: Colors.red.withOpacity(0.6),
        ),
      ),
      margin: const EdgeInsets.all(32),
      clipBehavior: Clip.antiAlias,
      indicatorColor: Colors.red,
      icon: const Icon(Icons.tips_and_updates_outlined),
      title: Text(
        title,
        style: context.textStyle.bodySmall.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
      content: Text(
        content,
        style: context.textStyle.bodyMedium,
      ),
    ),
  );
