part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();
}

class AppThemeSwitchLight extends AppEvent {

  const AppThemeSwitchLight({required this.lightTheme});
  final ThemeData lightTheme;

  @override
  List<Object?> get props => [lightTheme];
}

class AppThemeSwitchDark extends AppEvent {

  const AppThemeSwitchDark({required this.darkTheme});
  final ThemeData darkTheme;

  @override
  List<Object?> get props => [darkTheme];
}

class AppChangeLocale extends AppEvent {

  const AppChangeLocale(this.appLocale);
  final String appLocale;

  @override
  List<Object?> get props => [appLocale];
}
