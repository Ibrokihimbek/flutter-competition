import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/app_bloc/app_bloc.dart';
import 'package:flutter_competition/core/local_source/local_source.dart';
import 'package:flutter_competition/core/platform/network_info.dart';
import 'package:flutter_competition/router/app_routes.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:path_provider/path_provider.dart';

import 'constants/constants.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  //External
  await initHive();
  sl
    ..registerLazySingleton(
      () => Dio()
        ..options = BaseOptions(
          contentType: 'application/json',
          sendTimeout: const Duration(seconds: 40),
          receiveTimeout: const Duration(seconds: 40),
          connectTimeout: const Duration(seconds: 40),
          headers: {
            'X-API-KEY': AppKeys.xApiKey,
            'Resource-Id': AppKeys.resourceId,
            'Environment-Id': AppKeys.environmentId,
            'Authorization': AppKeys.authorization,
          },
        )
        ..interceptors.addAll(
          [
            LogInterceptor(
              requestBody: true,
              responseBody: true,
            ),
            chuck.getDioInterceptor(),
          ],
        ),
    )
    ..registerLazySingleton(InternetConnectionChecker.new)
    //Core
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()))
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerSingleton<AppBloc>(
      AppBloc(),
    );
  // Features
  authFeature();
}

void authFeature() {
  /// Presentation
  // sl
  //   ..registerFactory(
  //     () => LoginBloc(
  //       sendCodeUseCase: sl(),
  //     ),
  //   )
  //   ..registerFactory(
  //     () => ConfirmOtpBloc(
  //       userUpdateUseCase: sl(),
  //       sendCodeUseCase: sl(),
  //       confirmCodeUseCase: sl(),
  //       registerUseCase: sl(),
  //     ),
  //   )
  //   ///Repositories
  //   ..registerLazySingleton<AuthRepository>(
  //     () => AuthRepositoryImpl(
  //       remoteDataSource: sl(),
  //       networkInfo: sl(),
  //     ),
  //   );
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
