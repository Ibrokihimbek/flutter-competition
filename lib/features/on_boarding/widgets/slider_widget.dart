import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AppUtils.kBoxHeight48,
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 350 / 812,
            child: Image.asset(image)),
        AppUtils.kBoxHeight36,
        Padding(
          padding: AppUtils.kPaddingHorizontal24,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: context.textStyle.boldTitle1,
          ),
        ),
        AppUtils.kBoxHeight36,
        Padding(
          padding: AppUtils.kPaddingHorizontal50,
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: context.textStyle.labelLarge.copyWith(fontSize: 13),
          ),
        ),
      ],
    );
  }
}
