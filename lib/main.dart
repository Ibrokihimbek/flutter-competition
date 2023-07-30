import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/app.dart';
import 'package:flutter_competition/core/app_bloc/app_bloc.dart';
import 'package:flutter_competition/services/notification_service.dart';

import 'injector_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await di.init();
  await notificationInitialize();

  /// bloc logger
  if (kDebugMode) {
    Bloc.observer = di.LogBlocObserver();
  }
  runApp(const MyApp());
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

