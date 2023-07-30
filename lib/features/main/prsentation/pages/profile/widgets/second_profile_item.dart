// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sport_burger/ui/widgets/text_widget_medium.dart';
// import 'package:sport_burger/utils/color.dart';
// import 'package:sport_burger/utils/icons/app_icons.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';
//
// class SecondProfileItem extends StatelessWidget {
//   const SecondProfileItem({
//     Key? key,
//     required this.title,
//     required this.onTap,
//     required this.leftIcon,
//     this.isRightIconHave = false,
//     this.rightIcon = AppIcons.arrow_right,
//     this.rightIconSize = 20.0,
//   }) : super(key: key);
//
//   final String title;
//   final VoidCallback onTap;
//   final String leftIcon;
//   final bool isRightIconHave;
//   final String rightIcon;
//   final double rightIconSize;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ZoomTapAnimation(
//           onTap: () {},
//           child: Container(
//             padding: EdgeInsets.only(left: 16.w, right: 24.w),
//             height: 40.h,
//             width: double.infinity,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     SvgPicture.asset(leftIcon, width: 24.w, height: 24.h),
//                     SizedBox(width: 16.w),
//                     TextWidgetMedium(
//                       title: title,
//                       fontSize: 16.sp,
//                       color: MyColors.greyscale600,
//                     ),
//                   ],
//                 ),
//                 isRightIconHave
//                     ? SvgPicture.asset(rightIcon,
//                         width: rightIconSize, height: rightIconSize)
//                     : SizedBox(),
//               ],
//             ),
//           ),
//         ),
//         SizedBox(height: 24.h),
//       ],
//     );
//   }
// }
