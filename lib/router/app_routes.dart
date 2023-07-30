import 'package:chuck_interceptor/chuck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/local_source/local_source.dart';
import 'package:flutter_competition/features/auth/presentation/pages/auth_page_changed/auth_page_changed.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/pages/delivery_addresses/delivery_adress_page.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/pages/languages/languages_pages.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/pages/profile_page.dart';
import 'package:flutter_competition/features/on_boarding/presentation/bloc/on_boarding_bloc.dart';
import 'package:flutter_competition/features/main/prsentation/cubit/connectivity/connectivity_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/pages/main_page.dart';
import 'package:flutter_competition/features/auth/presentation/bloc/auth_page_changed/auth_changed_bloc.dart';
import 'package:flutter_competition/features/on_boarding/presentation/pages/on_boarding_page.dart';
import 'package:flutter_competition/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter_competition/features/splash/presentation/pages/splash_page.dart';
import '../injector_container.dart';

part 'name_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final mainRootNavigatorKey = GlobalKey<NavigatorState>();
final localSource = sl<LocalSource>();

final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

sealed class AppRoutes {
  AppRoutes._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SplashBloc(),
            child: const SplashPage(),
          ),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ConnectivityCubit(),
            child: const MainScreen(),
          ),
        );
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnBoardingBloc(),
            child: const OnBoardingPage(),
          ),
        );
      case Routes.deliveryAddress:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnBoardingBloc(),
            child: const DeliveryAddressPage(),
          ),
        );
      case Routes.language:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnBoardingBloc(),
            child: const LanguagesPage(),
          ),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnBoardingBloc(),
            child: const ProfilePage(),
          ),
        );
      case Routes.auth:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthChangedBloc(),
            child: const AuthPage(),
          ),
        );
    }
    return null;
  }
}
