part of 'app_bloc.dart';

class AppState extends Equatable {

  const AppState({
    required this.appLocale,
    this.lightTheme,
    this.darkTheme,
    this.themeMode,
  });
  final ThemeData? lightTheme;
  final ThemeData? darkTheme;
  final ThemeMode? themeMode;
  final String appLocale;

  AppState copyWith({
    ThemeData? lightTheme,
    ThemeData? darkTheme,
    ThemeMode? themeMode,
    String? appLocale,
  }) => AppState(
      lightTheme: lightTheme ?? this.lightTheme,
      darkTheme: darkTheme ?? this.darkTheme,
      themeMode: themeMode ?? this.themeMode,
      appLocale: appLocale ?? this.appLocale,
    );

  @override
  List<Object?> get props => [
        lightTheme,
        darkTheme,
        themeMode,
        appLocale,
      ];
}
