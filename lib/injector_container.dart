import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/app_bloc/app_bloc.dart';
import 'package:flutter_competition/core/local_source/local_source.dart';
import 'package:flutter_competition/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter_competition/features/auth/presentation/bloc/auth_page_changed/auth_changed_bloc.dart';
import 'package:flutter_competition/features/auth/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  //External
  await initHive();
  sl
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerSingleton<AppBloc>(
      AppBloc(),
    );
  // Features
  authFeature();
}

void authFeature() {
  /// Presentation
  sl
    ..registerFactory(
      () => AuthBloc(
        authRepository: sl(),
      ),
    )
    ..registerFactory(
      () => AuthChangedBloc(),
    )

    ///Repositories
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepository(
        auth:  FirebaseAuth.instance,
        firebaseFireStore: FirebaseFirestore.instance,
      ),
    );
}

Future<void> initHive() async {
  const boxName = 'qwatt_client_mobile_box';
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}

class LogBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print(change);
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print('$bloc closed');
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print('$bloc created');
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print('${bloc.runtimeType} $event');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      print('${bloc.runtimeType} $error');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print(transition);
    }
  }
}
