import 'package:flutter/material.dart';
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
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 350 /812,
            child: Image.asset(image, width: 200, height: 200)),
        AppUtils.kBoxHeight36,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 37),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            )),
      ],
    );
  }
}
