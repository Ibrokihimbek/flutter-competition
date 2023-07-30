import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/app_bloc/app_bloc.dart';
import 'package:flutter_competition/router/app_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'generated/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
        builder: (_, state) => KeyboardDismisser(
          child: MaterialApp(
            title: 'Flutter Competition',
            debugShowCheckedModeBanner: false,
            themeMode: state.themeMode,
            theme: state.lightTheme,
            darkTheme: state.darkTheme,
            initialRoute: Routes.main,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            locale: Locale.fromSubtags(languageCode: state.appLocale),
            navigatorKey: rootNavigatorKey,
            supportedLocales: AppLocalization.delegate.supportedLocales,
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
          ),
        ),
      );

  @override
  void dispose() {
    super.dispose();
  }
}
