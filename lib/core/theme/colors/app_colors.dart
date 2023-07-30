import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.sunglow,
    required this.flavescent,
    required this.brightGray,
    required this.cultured,
    required this.ghostWhite,
    required this.mainBlack,
    required this.primaryColor,
    required this.disabledColor,
    required this.backgroundColor,
    required this.white,
    required this.black,
    required this.seed,
    required this.surfaceTint,
    required this.surfaceTintColor,
    required this.onErrorContainer,
    required this.onError,
    required this.errorContainer,
    required this.onTertiaryContainer,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.tertiary,
    required this.shadow,
    required this.error,
    required this.outline,
    required this.onBackground,
    required this.background,
    required this.inverseOnSurface,
    required this.inverseSurface,
    required this.onSurfaceVariant,
    required this.onSurface,
    required this.onSecondaryContainer,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.secondary,
    required this.inversePrimary,
    required this.onPrimaryContainer,
    required this.onPrimary,
    required this.primaryContainer,
    required this.primary,
    required this.midGray,
    required this.midGray1,
    required this.darkGray,
    required this.midGray2,
    required this.midGray3,
  });
  final Color cultured;
  final Color flavescent;
  final Color primaryColor;
  final Color ghostWhite;
  final Color backgroundColor;
  final Color white;
  final Color black;
  final Color seed;
  final Color surfaceTint;
  final Color surfaceTintColor;
  final Color onErrorContainer;
  final Color onError;
  final Color errorContainer;
  final Color onTertiaryContainer;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color tertiary;
  final Color shadow;
  final Color error;
  final Color outline;
  final Color onBackground;
  final Color background;
  final Color inverseOnSurface;
  final Color inverseSurface;
  final Color onSurfaceVariant;
  final Color onSurface;
  final Color onSecondaryContainer;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color secondary;
  final Color inversePrimary;
  final Color onPrimaryContainer;
  final Color onPrimary;
  final Color primaryContainer;
  final Color primary;
  final Color midGray;
  final Color midGray1;
  final Color midGray2;
  final Color darkGray;
  final Color midGray3;
  final Color disabledColor;
  final Color mainBlack;
  final Color brightGray;
  final Color sunglow;

  static const light = ThemeColors(
    sunglow: Color(0xffF9CD2F),
    flavescent: Color(0xffF6E198),
    brightGray: Color(0xffE9F5EB),
    cultured: Color(0xffF8F8F8),
    ghostWhite: Color(0xffF9F9F9),
    mainBlack: Color(0xFF686B70),
    disabledColor: Color.fromRGBO(133, 127, 127, 0.15),
    primaryColor: Color(0xFFF83758),
    backgroundColor: Color(0xFFFFFFFF),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    seed: Color(0xFF2787F5),
    surfaceTint: Color(0xFF005EB4),
    surfaceTintColor: Color(0xFF005EB4),
    onErrorContainer: Color(0x0f12adc1),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onTertiaryContainer: Color(0xFF12ADC1),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFF9D8FF),
    tertiary: Color(0xFF12ADC1),
    shadow: Color(0xFF000000),
    error: Color(0xFFBA1A1A),
    outline: Color(0xFF74777F),
    onBackground: Color(0xFF1A1C1E),
    background: Color(0xFFFDFBFF),
    inverseOnSurface: Color(0xFFF1F0F4),
    inverseSurface: Color(0xFF2F3033),
    onSurfaceVariant: Color(0xFFE0E2EC),
    onSurface: Color(0xFFFDFBFF),
    onSecondaryContainer: Color(0xFF12ADC1),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD6E3FF),
    secondary: Color(0xFF515F78),
    inversePrimary: Color(0xFFA8C8FF),
    onPrimaryContainer: Color(0xFF12ADC1),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD6E3FF),
    primary: Color(0xFF005EB4),
    midGray: Color(0xFF9AA6AC),
    midGray1: Color(0xFF5B6871),
    midGray2: Color(0xFFF5F5F5),
    darkGray: Color(0xFF92979B),
    midGray3: Color(0xFFC2C3C5),
  );

  static const dark = ThemeColors(
    sunglow: Color(0xffFED138),
    flavescent: Color(0xffF6E198),
    brightGray: Color(0xffE9F5EB),
    cultured: Color(0xffE9F2F6),
    ghostWhite: Color(0xffF9F9F9),
    mainBlack: Color(0xFF686B70),
    disabledColor: Color.fromRGBO(133, 127, 127, 0.15),
    primaryColor: Color(0xFFF83758),
    backgroundColor: Color(0xFFF7F7F7),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    seed: Color(0xFF2787F5),
    surfaceTint: Color(0xFFFFFFFF),
    surfaceTintColor: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFFFFFFFF),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFFFFF),
    onTertiaryContainer: Color(0xFFFFFFFF),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFFFFF),
    tertiary: Color(0xFFFFFFFF),
    shadow: Color(0xFFFFFFFF),
    error: Color(0xFFFFFFFF),
    outline: Color(0xFFFFFFFF),
    onBackground: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    inverseOnSurface: Color(0xFFFFFFFF),
    inverseSurface: Color(0xFFFFFFFF),
    onSurfaceVariant: Color(0xFFFFFFFF),
    onSurface: Color(0xFFFFFFFF),
    onSecondaryContainer: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD6E3FF),
    secondary: Color(0xFF515F78),
    inversePrimary: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFFFFF),
    primary: Color(0xFFFFFFFF),
    midGray: Color(0xFF9AA6AC),
    midGray1: Color(0xFF5B6871),
    midGray2: Color(0xFFF5F5F5),
    darkGray: Color(0xFF92979B),
    midGray3: Color(0xFFC2C3C5),
  );

  @override
  ThemeExtension<ThemeColors> copyWith(
          {Color? primaryColor,
          Color? backgroundColor,
          Color? white,
          Color? black,
          Color? seed,
          Color? surfaceTint,
          Color? surfaceTintColor,
          Color? onErrorContainer,
          Color? onError,
          Color? errorContainer,
          Color? onTertiaryContainer,
          Color? onTertiary,
          Color? tertiaryContainer,
          Color? tertiary,
          Color? shadow,
          Color? error,
          Color? outline,
          Color? onBackground,
          Color? background,
          Color? inverseOnSurface,
          Color? inverseSurface,
          Color? onSurfaceVariant,
          Color? onSurface,
          Color? onSecondaryContainer,
          Color? onSecondary,
          Color? secondaryContainer,
          Color? secondary,
          Color? inversePrimary,
          Color? onPrimaryContainer,
          Color? onPrimary,
          Color? primaryContainer,
          Color? primary,
          Color? midGray,
          Color? midGray1,
          Color? darkGray,
          Color? midGray2,
          Color? midGray3,
          Color? disabledColor,
          Color? mainBlack,
          Color? ghostWhite,
          Color? cultured,
          Color? brightGray,
          Color? flavescent,
          Color? sunglow}) =>
      ThemeColors(
        sunglow: sunglow ?? this.sunglow,
        flavescent: flavescent ?? this.flavescent,
        brightGray: brightGray ?? this.brightGray,
        cultured: cultured ?? this.cultured,
        ghostWhite: ghostWhite ?? this.ghostWhite,
        mainBlack: mainBlack ?? this.mainBlack,
        disabledColor: disabledColor ?? this.disabledColor,
        primaryColor: primaryColor ?? this.primaryColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        white: white ?? this.white,
        black: black ?? this.black,
        seed: seed ?? this.seed,
        surfaceTint: surfaceTint ?? this.surfaceTint,
        surfaceTintColor: surfaceTintColor ?? this.surfaceTintColor,
        onErrorContainer: onErrorContainer ?? this.onErrorContainer,
        onError: onError ?? this.onError,
        errorContainer: errorContainer ?? this.errorContainer,
        onTertiaryContainer: onTertiaryContainer ?? this.onTertiaryContainer,
        onTertiary: onTertiary ?? this.onTertiary,
        tertiaryContainer: tertiaryContainer ?? this.tertiaryContainer,
        tertiary: tertiary ?? this.tertiary,
        shadow: shadow ?? this.shadow,
        error: error ?? this.error,
        outline: outline ?? this.outline,
        onBackground: onBackground ?? this.onBackground,
        background: background ?? this.background,
        inverseOnSurface: inverseOnSurface ?? this.inverseOnSurface,
        inverseSurface: inverseSurface ?? this.inverseSurface,
        onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
        onSurface: onSurface ?? this.onSurface,
        onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
        onSecondary: onSecondary ?? this.onSecondary,
        secondaryContainer: secondaryContainer ?? this.secondaryContainer,
        secondary: secondary ?? this.secondary,
        inversePrimary: inversePrimary ?? this.inversePrimary,
        onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
        onPrimary: onPrimary ?? this.onPrimary,
        primaryContainer: primaryContainer ?? this.primaryContainer,
        primary: primary ?? this.primary,
        midGray: midGray ?? this.midGray,
        midGray1: midGray1 ?? this.midGray1,
        midGray2: midGray2 ?? this.midGray2,
        darkGray: darkGray ?? this.darkGray,
        midGray3: midGray3 ?? this.midGray3,
      );

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      sunglow: Color.lerp(sunglow, other.sunglow, t)!,
      flavescent: Color.lerp(flavescent, other.flavescent, t)!,
      cultured: Color.lerp(cultured, other.cultured, t)!,
      brightGray: Color.lerp(brightGray, other.brightGray, t)!,
      ghostWhite: Color.lerp(ghostWhite, other.ghostWhite, t)!,
      mainBlack: Color.lerp(mainBlack, other.mainBlack, t)!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      seed: Color.lerp(seed, other.seed, t)!,
      surfaceTint: Color.lerp(surfaceTint, other.surfaceTint, t)!,
      surfaceTintColor:
          Color.lerp(surfaceTintColor, other.surfaceTintColor, t)!,
      onErrorContainer:
          Color.lerp(onErrorContainer, other.onErrorContainer, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      onTertiaryContainer:
          Color.lerp(onTertiaryContainer, other.onTertiaryContainer, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      tertiaryContainer:
          Color.lerp(tertiaryContainer, other.tertiaryContainer, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      error: Color.lerp(error, other.error, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      background: Color.lerp(background, other.background, t)!,
      inverseOnSurface:
          Color.lerp(inverseOnSurface, other.inverseOnSurface, t)!,
      inverseSurface: Color.lerp(inverseSurface, other.inverseSurface, t)!,
      onSurfaceVariant:
          Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onSecondaryContainer:
          Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      secondaryContainer:
          Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      inversePrimary: Color.lerp(inversePrimary, other.inversePrimary, t)!,
      onPrimaryContainer:
          Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      primaryContainer:
          Color.lerp(primaryContainer, other.primaryContainer, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      midGray: Color.lerp(midGray, other.midGray, t)!,
      midGray1: Color.lerp(midGray1, other.midGray1, t)!,
      midGray2: Color.lerp(midGray2, other.midGray2, t)!,
      darkGray: Color.lerp(darkGray, other.darkGray, t)!,
      midGray3: Color.lerp(midGray3, other.midGray3, t)!,
    );
  }
}
