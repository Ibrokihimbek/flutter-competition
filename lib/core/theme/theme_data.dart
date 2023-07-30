import 'package:flutter/material.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'app_text_style.dart';
import 'colors/app_colors.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: true,
  disabledColor: ThemeColors.light.primaryColor.withOpacity(0.15),
  splashColor: ThemeColors.light.primaryColor.withOpacity(0.01),
  focusColor: ThemeColors.light.primaryColor,
  colorSchemeSeed: ThemeColors.light.primaryColor,
  visualDensity: VisualDensity.standard,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  materialTapTargetSize: MaterialTapTargetSize.padded,
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.zero,
      ),
    ),
  ),
  dividerTheme: const DividerThemeData(thickness: 1),
);

final violetLightTheme = appTheme.copyWith(
  scaffoldBackgroundColor: ThemeColors.light.white,
  brightness: Brightness.light,
  dividerTheme: appTheme.dividerTheme.copyWith(
    color: ThemeColors.light.black.withOpacity(0.07),
  ),
  extensions: <ThemeExtension<dynamic>>[
    AppTextStyles.light,
    ThemeColors.light,
  ],
  colorScheme: ColorScheme.light(
    primary: ThemeColors.light.primaryColor,
    secondary: ThemeColors.light.primaryColor,
    surface: ThemeColors.light.white,
    background: ThemeColors.light.background,
    error: ThemeColors.light.error,
    onPrimary: ThemeColors.light.black,
    onSecondary: ThemeColors.light.black,
    onSurface: ThemeColors.light.black,
    onBackground: ThemeColors.light.background,
    onError: ThemeColors.light.onError,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: ThemeColors.light.white,
    surfaceTintColor: ThemeColors.light.white,
    shape: const RoundedRectangleBorder(
      borderRadius: AppUtils.kBorderRadius12,
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 1,
    backgroundColor: ThemeColors.light.white,
    surfaceTintColor: ThemeColors.light.white,
    shadowColor: const Color(0xffEDEDED),
    titleTextStyle: AppTextStyles.light.boldBody,
    toolbarHeight: 56,
    scrolledUnderElevation: 1,
    iconTheme: IconThemeData(
      color: ThemeColors.light.black,
    ),
  ),
  iconTheme: IconThemeData(
    color: ThemeColors.light.black,
  ),
  textTheme: TextTheme(
    titleSmall: AppTextStyles.light.labelSmall,
    bodyMedium: AppTextStyles.light.bodyMedium,
  ),
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    constraints: const BoxConstraints(
      minHeight: 56,
      maxHeight: 56,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
      borderSide: BorderSide(color: ThemeColors.light.error),
    ),
    border: const OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
      borderSide: BorderSide.none,
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
      borderSide: BorderSide(color: ThemeColors.light.primaryColor),
    ),
    disabledBorder: const OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
      borderSide: BorderSide.none,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: AppUtils.kBorderRadius12,
      borderSide: BorderSide(color: ThemeColors.light.error),
    ),
    filled: true,
    isDense: true,
    fillColor: ThemeColors.light.midGray2,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  ),
  drawerTheme: DrawerThemeData(
    backgroundColor: ThemeColors.light.white,
    surfaceTintColor: ThemeColors.light.white,
    shape: const RoundedRectangleBorder(),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      splashFactory: NoSplash.splashFactory,
      elevation: const MaterialStatePropertyAll(0),
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.light.mainBlack;
        } else {
          return ThemeColors.light.white;
        }
      }),
      textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(MaterialState.disabled)) {
          return AppTextStyles.light.boldSubHeadline;
        } else {
          return AppTextStyles.light.boldSubHeadline;
        }
      }),
      surfaceTintColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.light.disabledColor;
        } else {
          return ThemeColors.light.primaryColor;
        }
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.light.disabledColor;
        } else {
          return ThemeColors.light.primaryColor;
        }
      }),
      shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppUtils.kBorderRadius12,
        ),
      ),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 48),
      ),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 48),
      ),
    ),
  ),
  // bottomSheetTheme: BottomSheetThemeData(
  //   // showDragHandle: true,
  //   backgroundColor: ThemeColors.light.white,
  //   surfaceTintColor: ThemeColors.light.white,
  //   shape: const RoundedRectangleBorder(borderRadius: AppUtils.kBorderRadiusTop12),
  // ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: ThemeColors.light.primaryColor,
    unselectedItemColor: Colors.black,
    selectedLabelStyle: AppTextStyles.light.labelSmall.copyWith(
      color: ThemeColors.light.primaryColor,
    ),
    unselectedLabelStyle: AppTextStyles.light.labelSmall.copyWith(
      color: ThemeColors.light.midGray,
    ),
    selectedIconTheme: IconThemeData(
      color: ThemeColors.light.primaryColor,
    ),
    unselectedIconTheme: IconThemeData(
      color: ThemeColors.light.midGray,
    ),
  ),
);

final violetDarkTheme = appTheme.copyWith(
  scaffoldBackgroundColor: ThemeColors.dark.black,
  brightness: Brightness.dark,
  dividerTheme: appTheme.dividerTheme.copyWith(
    color: ThemeColors.dark.white.withOpacity(0.07),
  ),
  extensions: <ThemeExtension<dynamic>>[
    AppTextStyles.light,
    ThemeColors.light,
  ],
  appBarTheme: AppBarTheme(
    elevation: 1,
    foregroundColor: ThemeColors.light.white,
    backgroundColor: ThemeColors.light.white,
    surfaceTintColor: ThemeColors.light.white,
    shadowColor: Colors.black,
    titleTextStyle: AppTextStyles.dark.boldBody,
    toolbarHeight: 56,
    scrolledUnderElevation: 1,
  ),
  textTheme: const TextTheme(),
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    constraints: const BoxConstraints(
      minHeight: 56,
      maxHeight: 56,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide(color: ThemeColors.dark.error),
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    disabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide(color: ThemeColors.dark.error),
    ),
    filled: true,
    isDense: true,
    fillColor: ThemeColors.dark.black,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.dark.primaryColor.withOpacity(0.5);
        } else {
          return ThemeColors.dark.white;
        }
      }),
      textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(MaterialState.disabled)) {
          return AppTextStyles.dark.boldSubHeadline;
        } else {
          return AppTextStyles.dark.boldSubHeadline;
        }
      }),
      surfaceTintColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.dark.primaryColor.withOpacity(0.15);
        } else {
          return ThemeColors.dark.primaryColor;
        }
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.dark.primaryColor.withOpacity(0.15);
        } else {
          return ThemeColors.dark.primaryColor;
        }
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: AppUtils.kBorderRadius12,
        ),
      ),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 56),
      ),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 56),
      ),
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: ThemeColors.dark.white,
    surfaceTintColor: ThemeColors.dark.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: ThemeColors.light.primaryColor,
    unselectedItemColor: Colors.black,
    selectedLabelStyle: AppTextStyles.dark.labelSmall.copyWith(
      color: ThemeColors.light.primaryColor,
    ),
    unselectedLabelStyle: AppTextStyles.dark.labelSmall.copyWith(
      color: ThemeColors.light.midGray,
    ),
    selectedIconTheme: IconThemeData(
      color: ThemeColors.light.primaryColor,
    ),
    unselectedIconTheme: IconThemeData(
      color: ThemeColors.light.midGray,
    ),
  ),
);
