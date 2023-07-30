import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/app.dart';
import 'package:flutter_competition/core/app_bloc/app_bloc.dart';
import 'package:flutter_competition/services/notification_service.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'injector_container.dart' as di;

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await di.init();
  await notificationInitialize();

  /// bloc logger
  if (kDebugMode) {
    Bloc.observer = di.LogBlocObserver();
  }
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => di.sl<AppBloc>()),
        ],
        child: const App(),
      );
}

// flutter pub run flutter_launcher_icons:main
// flutter run -d windows
// flutter build apk --release
// flutter build apk --split-per-abi
// flutter build appbundle --release
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub ipa
