import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MapTypeButton extends StatelessWidget {
  const MapTypeButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 50),
      child: Align(
        alignment: Alignment.topRight,
        child: ZoomTapAnimation(
          onTap: () => onTap(),
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: ThemeColors.light.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(SvgImages.map, width: 24, height: 24),
          ),
        ),
      ),
    );
  }
}
