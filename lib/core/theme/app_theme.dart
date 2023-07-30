import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/theme_data.dart';

enum LightThemes { violetTheme }

enum DarkThemes { violetTheme }

Map<LightThemes, ThemeData> lightThemes = {
  LightThemes.violetTheme: violetLightTheme,
};

Map<DarkThemes, ThemeData> darkThemes = {
  DarkThemes.violetTheme: violetDarkTheme,
};
