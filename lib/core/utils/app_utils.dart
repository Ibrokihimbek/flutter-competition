import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:gap/gap.dart';

sealed class AppUtils {
  AppUtils._();

  /// box
  static const kGap = Gap(0);
  static const kGap2 = Gap(2);
  static const kGap4 = Gap(4);
  static const kGap6 = Gap(6);
  static const kGap8 = Gap(8);
  static const kGap12 = Gap(12);
  static const kGap16 = Gap(16);
  static const kGap24 = Gap(24);
  static const kGap32 = Gap(32);
  static const kGap40 = Gap(40);

  /// divider
  static const kDivider = Divider(height: 1, thickness: 1);
  static const kPad16Divider = Padding(
    padding: EdgeInsets.only(left: 16),
    child: Divider(height: 1, thickness: 1),
  );
  static const kPadHor16Divider = Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Divider(height: 1, thickness: 1),
  );

  static VerticalDivider kVerticalDivider = VerticalDivider(
    color: ThemeColors.light.mainBlack.withOpacity(0.2),
    thickness: 1.5,
    indent: 2,
    endIndent: 2,
  );

  /// spacer
  static const kSpacer = Spacer();

  /// SizedBox
  static const kBox = SizedBox.shrink();
  static const kBoxHeight2 = SizedBox(height: 2);
  static const kBoxHeight4 = SizedBox(height: 4);
  static const kBoxHeight6 = SizedBox(height: 6);
  static const kBoxHeight8 = SizedBox(height: 8);
  static const kBoxHeight7 = SizedBox(height: 7);
  static const kBoxHeight10 = SizedBox(height: 10);
  static const kBoxHeight12 = SizedBox(height: 12);
  static const kBoxHeight14 = SizedBox(height: 14);
  static const kBoxHeight16 = SizedBox(height: 16);
  static const kBoxHeight18 = SizedBox(height: 18);
  static const kBoxHeight20 = SizedBox(height: 20);
  static const kBoxHeight22 = SizedBox(height: 22);
  static const kBoxHeight24 = SizedBox(height: 24);
  static const kBoxHeight26 = SizedBox(height: 26);
  static const kBoxHeight45 = SizedBox(height: 45);
  static const kBoxHeight48 = SizedBox(height: 48);
  static const kBoxHeight58 = SizedBox(height: 58);

  static const kBoxHeight30 = SizedBox(height: 30);
  static const kBoxHeight36 = SizedBox(height: 36);
  static const kBoxHeight32 = SizedBox(height: 32);
  static const kBoxHeight64 = SizedBox(height: 64);
  static const kBoxWidth2 = SizedBox(width: 2);
  static const kBoxWidth8 = SizedBox(width: 8);
  static const kBoxWidth6 = SizedBox(width: 6);
  static const kBoxWidth4 = SizedBox(width: 4);
  static const kBoxWidth10 = SizedBox(width: 10);
  static const kBoxWidth12 = SizedBox(width: 12);
  static const kBoxWidth20 = SizedBox(width: 20);
  static const kBoxWidth16 = SizedBox(width: 16);
  static const kBoxWidth24 = SizedBox(width: 24);
  static const kBoxWidth30 = SizedBox(width: 30);

  /// padding
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll12 = EdgeInsets.all(12);

  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingLeft16Top16 = EdgeInsets.only(left: 16, top: 16);
  static const kPaddingLeft16Right24 = EdgeInsets.only(left: 16, right: 24);
  static const kPaddingAllB16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingAllT16 = EdgeInsets.fromLTRB(16, 0, 16, 16);
  static const kPaddingAll24 = EdgeInsets.all(24);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHorizontal5 = EdgeInsets.symmetric(horizontal: 5);
  static const kPaddingHorizontal24 = EdgeInsets.symmetric(horizontal: 24);
  static const kPaddingHorizontal50 = EdgeInsets.symmetric(horizontal: 50);
  static const kPaddingHorizontal56 = EdgeInsets.only(right: 56);
  static const kPaddingVertical16 = EdgeInsets.symmetric(vertical: 16);
  static const kPaddingVertical12 = EdgeInsets.symmetric(vertical: 12);
  static const kPaddingVertical4 = EdgeInsets.symmetric(vertical: 4);
  static const kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 22, vertical: 20);
  static const kPaddingHor58 = EdgeInsets.symmetric(horizontal: 58);
  static const kPaddingHor12Top12 = EdgeInsets.only(
    left: 12,
    right: 12,
    top: 12,
  );

  static const kPaddingTop160 = EdgeInsets.only(
    top: 160,
  );
  static const kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingHor2Ver8 =
      EdgeInsets.symmetric(horizontal: 2, vertical: 8);
  static const kPaddingHor12Ver16 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 16);
  static const kPaddingHor12Ver14 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 14);
  static const kPaddingHor16Top30Bot6 =
      EdgeInsets.only(right: 16, left: 16, top: 30, bottom: 6);
  static const kPaddingHor16Top12 =
      EdgeInsets.only(right: 16, left: 16, top: 12);
  static const kPaddingHor16Ver24 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 24);

  static const kPaddingHor16Ver19 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 19);
  static const kPaddingHor16Ver8 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const kPaddingVer32 = EdgeInsets.symmetric(vertical: 32);
  static const kPaddingHor16Ver4 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 4);
  static const kPaddingHor12Ver8 =
      EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  static const kPaddingHor36Ver10 =
      EdgeInsets.symmetric(horizontal: 36, vertical: 10);
  static const kPaddingHor8Ver4 =
      EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static const kPaddingLeft12Right6Top12 = EdgeInsets.only(
    left: 12,
    right: 6,
    top: 13,
  );

  static const kPaddingLeft8Right16 = EdgeInsets.only(left: 8, right: 16);
  static const kPaddingLeft8 = EdgeInsets.only(
    left: 8,
  );
  static const kPaddingLeft16Top90 = EdgeInsets.only(
    left: 16,
    top: 90,
  );
  static const kPaddingLeft12Right16Bot16 = EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 16,
  );
  static const kPaddingLeft20Right16Top25Bot40 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 25,
    bottom: 40,
  );
  static const kPaddingBot16 = EdgeInsets.only(bottom: 16);
  static const kPaddingHor16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHor88 = EdgeInsets.symmetric(horizontal: 88);
  static const kPaddingHor14 = EdgeInsets.symmetric(horizontal: 14);
  static const kPaddingHor14Ver12 =
      EdgeInsets.symmetric(horizontal: 14, vertical: 12);
  static const kPaddingHor16Bot16 = EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 16,
  );

  static const kPaddingHor12 = EdgeInsets.symmetric(horizontal: 12);

  /// border radius
  static const kRadius = Radius.zero;
  static const kRadius8 = Radius.circular(8);
  static const kRadius12 = Radius.circular(12);
  static const kBorderRadiusTop12 = BorderRadius.only(
    topLeft: Radius.circular(12),
    topRight: Radius.circular(12),
  );

  // ignore: use_named_constants
  static const kBorderRadius = BorderRadius.all(Radius.circular(0));
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
  static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius6 = BorderRadius.all(Radius.circular(6));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius24 = BorderRadius.all(Radius.circular(24));
  static const kBorderRadius20 = BorderRadius.all(Radius.circular(20));
  static const kBorderRadius48 = BorderRadius.all(Radius.circular(48));
  static const kBorderRadius64 = BorderRadius.all(Radius.circular(64));

  // static const kTabBarBoxDecoration = BoxDecoration(
  //   color: AppColors.bgGrey2,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBarBoxDecorationDark = BoxDecoration(
  //   color: ThemeColors.backgroundDark,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBoxDecoration = BoxDecoration(
  //   color: AppColors.white,
  //   borderRadius: kBorderRadius8,
  // );

  static void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text, style: const TextStyle(fontSize: 24)),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
