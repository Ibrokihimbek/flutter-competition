import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/generated/l10n.dart';

extension BuildContextExt on BuildContext {
  AppLocalization get localizations => AppLocalization.of(this);

  Locale get locale => Localizations.localeOf(this);

  ThemeData get theme => Theme.of(this);

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
}
