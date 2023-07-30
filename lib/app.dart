import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/app_bloc/app_bloc.dart';
import 'package:flutter_competition/router/app_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
        builder: (_, state) => KeyboardDismisser(
          child: MaterialApp(
            title: 'Flutter Competition',
            debugShowCheckedModeBanner: false,
            themeMode: state.themeMode,
            theme: state.lightTheme,
            darkTheme: state.darkTheme,
            initialRoute: Routes.mainAdmin,
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
}
