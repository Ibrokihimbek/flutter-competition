import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem BottomNavigationBarItemWidget({
  required String icon,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset("assets/svg/icon/$icon.svg",
        width: 24, height: 24),
    label: "${icon[0].toUpperCase()}${icon.substring(1)}",
  );
}
