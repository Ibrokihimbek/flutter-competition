import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondProfileItem extends StatelessWidget {
  const SecondProfileItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.leftIcon,
    this.isRightIconHave = false,
    this.rightIcon = "assets/svg/arrow_right.svg",
    this.rightIconSize = 20.0,
  }) : super(key: key);

  final String title;
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
          onTap: () {},
          child: Container(
            padding: AppUtils.kPaddingLeft16Right24,
            height: 40,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(leftIcon, width: 30, height: 30),
                    AppUtils.kBoxWidth16,
                    Text(title, style: context.textStyle.boldCallOut),
                  ],
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
