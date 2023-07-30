import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.leftIcon,
    required this.isRightIconHave,
    required this.rightIcon,
    this.rightIconSize = 20.0,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final String leftIcon;
  final bool isRightIconHave;
  final String rightIcon;
  final double rightIconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => onTap(),
          child: Padding(
            padding: AppUtils.kPaddingLeft16Right24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset(leftIcon, height: 30, width: 30),
                      AppUtils.kBoxWidth16,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title, style: context.textStyle.boldCallOut),
                            AppUtils.kBoxHeight2,
                            Text(subtitle,
                                style: context.textStyle.regularCaption1),
                          ],
                        ),
                      ),
                      AppUtils.kBoxHeight10,
                    ],
                  ),
                ),
                isRightIconHave
                    ? SvgPicture.asset(rightIcon,
                        width: rightIconSize, height: rightIconSize)
                    : const SizedBox(),
              ],
            ),
          ),
        ),
        AppUtils.kBoxHeight24,
      ],
    );
  }
}
