import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem BottomNavigationBarItemWidget({
  required String icon,
  required bool kmn,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      "assets/svg/$icon.svg",
      width: 18,
      height: 18,
      color: icon == "home" && kmn == true
          ? icon != "home" && kmn == false ?  Colors.black :Colors.red
          : icon == "cart" && kmn == true
              ? Colors.red
              : icon == "profile" && kmn == true
                  ? Colors.red
                  : Colors.black,
    ),
    label: "${icon[0].toUpperCase()}${icon.substring(1)}",
  );
}
