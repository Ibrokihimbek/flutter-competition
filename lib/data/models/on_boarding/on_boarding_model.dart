import 'package:flutter/material.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/features/on_boarding/widgets/slider_widget.dart';

class OnBoardingModel {
  static List<Widget> pages = [
    const SliderWidget(
      title: "Choose Products",
      subTitle:
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      image: PngImage.firstOnBoarding,
    ),
    const SliderWidget(
      title: "Make Payment",
      subTitle:
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      image: PngImage.secondOnBoarding,
    ),
    const SliderWidget(
      title: "Get Your Order",
      subTitle:
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      image: PngImage.thirdOnBoarding,
    ),
  ];
}