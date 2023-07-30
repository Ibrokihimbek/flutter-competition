import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/theme/app_theme.dart';
import 'package:flutter_competition/router/app_routes.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(
          AppState(
            lightTheme: lightThemes.values.first,
            darkTheme: darkThemes.values.first,
            themeMode: ThemeMode.light,
            appLocale: localSource.locale,
          ),
        ) {
    on<AppThemeSwitchLight>(_switchToLightHandler);
    on<AppThemeSwitchDark>(_switchToDarkHandler);
    on<AppChangeLocale>(_changeLocale);
  }

  void _changeLocale(AppChangeLocale event, Emitter<AppState> emit) {
    localSource.setLocale(event.appLocale);
    emit(
      state.copyWith(
        appLocale: event.appLocale,
      ),
    );
  }

  void _switchToLightHandler(
      AppThemeSwitchLight event, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        lightTheme: event.lightTheme,
        themeMode: ThemeMode.light,
      ),
    );
  }

  void _switchToDarkHandler(AppThemeSwitchDark event, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        darkTheme: event.darkTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
