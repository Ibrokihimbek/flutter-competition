import 'package:flutter/material.dart';
import 'colors/app_colors.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {

  const AppTextStyles({
    required this.regularCaption2,
    required this.regularCaption1,
    required this.regularFootNote,
    required this.regularSubHeadline,
    required this.regularCallOut,
    required this.regularBody,
    required this.regularHeadline,
    required this.regularTitle3,
    required this.regularTitle2,
    required this.regularTitle1,
    required this.regularLargeTitle,
    required this.boldCaption2,
    required this.boldCaption1,
    required this.boldFootNote,
    required this.boldSubHeadline,
    required this.boldCallOut,
    required this.boldBody,
    required this.boldHeadline,
    required this.boldTitle3,
    required this.boldTitle2,
    required this.boldTitle1,
    required this.boldLargeTitle,
    required this.labelSmall,
    required this.labelMedium,
    required this.labelLarge,
    required this.bodySmall,
    required this.bodyMedium,
    required this.bodyLarge,
    required this.headlineSmall,
    required this.headlineMedium,
    required this.headlineLarge,
    required this.displaySmall,
    required this.displayMedium,
    required this.displayLarge,
    required this.titleSmall,
    required this.titleMedium,
    required this.titleLarge,
  });
  final TextStyle regularCaption2;
  final TextStyle regularCaption1;
  final TextStyle regularFootNote;
  final TextStyle regularSubHeadline;
  final TextStyle regularCallOut;
  final TextStyle regularBody;
  final TextStyle regularHeadline;
  final TextStyle regularTitle3;
  final TextStyle regularTitle2;
  final TextStyle regularTitle1;
  final TextStyle regularLargeTitle;
  final TextStyle boldCaption2;
  final TextStyle boldCaption1;
  final TextStyle boldFootNote;
  final TextStyle boldSubHeadline;
  final TextStyle boldCallOut;
  final TextStyle boldBody;
  final TextStyle boldHeadline;
  final TextStyle boldTitle3;
  final TextStyle boldTitle2;
  final TextStyle boldTitle1;
  final TextStyle boldLargeTitle;
  final TextStyle labelSmall;
  final TextStyle labelMedium;
  final TextStyle labelLarge;
  final TextStyle bodySmall;
  final TextStyle bodyMedium;
  final TextStyle bodyLarge;
  final TextStyle headlineSmall;
  final TextStyle headlineMedium;
  final TextStyle headlineLarge;
  final TextStyle displaySmall;
  final TextStyle displayMedium;
  final TextStyle displayLarge;
  final TextStyle titleSmall;
  final TextStyle titleMedium;
  final TextStyle titleLarge;

  static final light = AppTextStyles(
    regularCaption2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularCaption1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularFootNote: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularSubHeadline: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularCallOut: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularBody: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularHeadline: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularTitle3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularTitle2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularTitle1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    regularLargeTitle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    boldCaption2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldCaption1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldFootNote: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldSubHeadline: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldCallOut: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldBody: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldHeadline: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldTitle3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldTitle2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldTitle1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    boldLargeTitle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.black,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: ThemeColors.light.black,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: ThemeColors.light.black,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ThemeColors.light.black,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.black,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ThemeColors.light.black,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ThemeColors.light.black,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: ThemeColors.light.black,
    ),
  );

  static final dark = AppTextStyles(
    regularCaption2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularCaption1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularFootNote: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularSubHeadline: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularCallOut: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularBody: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularHeadline: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularTitle3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularTitle2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularTitle1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    regularLargeTitle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    boldCaption2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldCaption1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldFootNote: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldSubHeadline: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldCallOut: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldBody: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldHeadline: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldTitle3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldTitle2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldTitle1: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    boldLargeTitle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w600,
      color: ThemeColors.dark.white,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: ThemeColors.dark.white,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: ThemeColors.dark.white,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ThemeColors.dark.white,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: ThemeColors.dark.white,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ThemeColors.dark.white,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ThemeColors.dark.white,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: ThemeColors.dark.white,
    ),
  );

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? regularCaption2,
    TextStyle? regularCaption1,
    TextStyle? regularFootNote,
    TextStyle? regularSubHeadline,
    TextStyle? regularCallOut,
    TextStyle? regularBody,
    TextStyle? regularHeadline,
    TextStyle? regularTitle3,
    TextStyle? regularTitle2,
    TextStyle? regularTitle1,
    TextStyle? regularLargeTitle,
    TextStyle? boldCaption2,
    TextStyle? boldCaption1,
    TextStyle? boldFootNote,
    TextStyle? boldSubHeadline,
    TextStyle? boldCallOut,
    TextStyle? boldBody,
    TextStyle? boldHeadline,
    TextStyle? boldTitle3,
    TextStyle? boldTitle2,
    TextStyle? boldTitle1,
    TextStyle? boldLargeTitle,
    TextStyle? labelSmall,
    TextStyle? labelMedium,
    TextStyle? labelLarge,
    TextStyle? bodySmall,
    TextStyle? bodyMedium,
    TextStyle? bodyLarge,
    TextStyle? headlineSmall,
    TextStyle? headlineMedium,
    TextStyle? headlineLarge,
    TextStyle? displaySmall,
    TextStyle? displayMedium,
    TextStyle? displayLarge,
    TextStyle? titleSmall,
    TextStyle? titleMedium,
    TextStyle? titleLarge,
  }) => AppTextStyles(
      regularCaption2: regularCaption2 ?? this.regularCaption2,
      regularCaption1: regularCaption1 ?? this.regularCaption1,
      regularFootNote: regularFootNote ?? this.regularFootNote,
      regularSubHeadline: regularSubHeadline ?? this.regularSubHeadline,
      regularCallOut: regularCallOut ?? this.regularCallOut,
      regularBody: regularBody ?? this.regularBody,
      regularHeadline: regularHeadline ?? this.regularHeadline,
      regularTitle3: regularTitle3 ?? this.regularTitle3,
      regularTitle2: regularTitle2 ?? this.regularTitle2,
      regularTitle1: regularTitle1 ?? this.regularTitle1,
      regularLargeTitle: regularLargeTitle ?? this.regularLargeTitle,
      boldCaption2: boldCaption2 ?? this.boldCaption2,
      boldCaption1: boldCaption1 ?? this.boldCaption1,
      boldFootNote: boldFootNote ?? this.boldFootNote,
      boldSubHeadline: boldSubHeadline ?? this.boldSubHeadline,
      boldCallOut: boldCallOut ?? this.boldCallOut,
      boldBody: boldBody ?? this.boldBody,
      boldHeadline: boldHeadline ?? this.boldHeadline,
      boldTitle3: boldTitle3 ?? this.boldTitle3,
      boldTitle2: boldTitle2 ?? this.boldTitle2,
      boldTitle1: boldTitle1 ?? this.boldTitle1,
      boldLargeTitle: boldLargeTitle ?? this.boldLargeTitle,
      labelSmall: labelSmall ?? this.labelSmall,
      labelMedium: labelMedium ?? this.labelMedium,
      labelLarge: labelLarge ?? this.labelLarge,
      bodySmall: bodySmall ?? this.bodySmall,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      displaySmall: displaySmall ?? this.displaySmall,
      displayMedium: displayMedium ?? this.displayMedium,
      displayLarge: displayLarge ?? this.displayLarge,
      titleSmall: titleSmall ?? this.titleSmall,
      titleMedium: titleMedium ?? this.titleMedium,
      titleLarge: titleLarge ?? this.titleLarge,
    );

  @override
  ThemeExtension<AppTextStyles> lerp(
      ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      regularCaption2:
          TextStyle.lerp(regularCaption2, other.regularCaption2, t)!,
      regularCaption1:
          TextStyle.lerp(regularCaption1, other.regularCaption1, t)!,
      regularFootNote:
          TextStyle.lerp(regularFootNote, other.regularFootNote, t)!,
      regularSubHeadline:
          TextStyle.lerp(regularSubHeadline, other.regularSubHeadline, t)!,
      regularCallOut: TextStyle.lerp(regularCallOut, other.regularCallOut, t)!,
      regularBody: TextStyle.lerp(regularBody, other.regularBody, t)!,
      regularHeadline:
          TextStyle.lerp(regularHeadline, other.regularHeadline, t)!,
      regularTitle3: TextStyle.lerp(regularTitle3, other.regularTitle3, t)!,
      regularTitle2: TextStyle.lerp(regularTitle2, other.regularTitle2, t)!,
      regularTitle1: TextStyle.lerp(regularTitle1, other.regularTitle1, t)!,
      regularLargeTitle:
          TextStyle.lerp(regularLargeTitle, other.regularLargeTitle, t)!,
      boldCaption2: TextStyle.lerp(boldCaption2, other.boldCaption2, t)!,
      boldCaption1: TextStyle.lerp(boldCaption1, other.boldCaption1, t)!,
      boldFootNote: TextStyle.lerp(boldFootNote, other.boldFootNote, t)!,
      boldSubHeadline:
          TextStyle.lerp(boldSubHeadline, other.boldSubHeadline, t)!,
      boldCallOut: TextStyle.lerp(boldCallOut, other.boldCallOut, t)!,
      boldBody: TextStyle.lerp(boldBody, other.boldBody, t)!,
      boldHeadline: TextStyle.lerp(boldHeadline, other.boldHeadline, t)!,
      boldTitle3: TextStyle.lerp(boldTitle3, other.boldTitle3, t)!,
      boldTitle2: TextStyle.lerp(boldTitle2, other.boldTitle2, t)!,
      boldTitle1: TextStyle.lerp(boldTitle1, other.boldTitle1, t)!,
      boldLargeTitle: TextStyle.lerp(boldLargeTitle, other.boldLargeTitle, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
    );
  }
}

extension BuildContextX on BuildContext {
  AppTextStyles get textStyle => Theme.of(this).extension<AppTextStyles>()!;
}
