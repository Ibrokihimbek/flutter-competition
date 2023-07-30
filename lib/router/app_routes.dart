import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/local_source/local_source.dart';
import 'package:flutter_competition/data/models/lat_long/lat_long_model.dart';
import 'package:flutter_competition/features/admin_app/futures/main/presentation/main_page.dart';
import 'package:flutter_competition/features/admin_app/futures/main/presentation/pages/category_page/category_page.dart';
import 'package:flutter_competition/features/admin_app/futures/main/presentation/pages/category_page/sub_screen/category_add_page.dart';
import 'package:flutter_competition/features/auth/presentation/pages/auth_page_changed/auth_page_changed.dart';
import 'package:flutter_competition/features/main/prsentation/bloc/bloc/location_permission/location_permission_bloc.dart';
import 'package:flutter_competition/features/main/prsentation/bloc/cubit/connectivity/connectivity_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/add_new_address/add_new_address_screen.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/delivery_addresses/delivery_adress_page.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/languages/languages_pages.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/profile_page.dart';
import 'package:flutter_competition/features/no_internet/no_internet_screen.dart';
import 'package:flutter_competition/features/on_boarding/presentation/bloc/on_boarding_bloc.dart';
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

// final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

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
      case Routes.noInternet:
        return MaterialPageRoute(
          builder: (_) => NoInternetScreen(
              voidCallback: settings.arguments as VoidCallback),
        );
      case Routes.main:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ConnectivityCubit(),
            child: const MainScreen(),
          ),
        );
      case Routes.mainAdmin:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ConnectivityCubit(),
            child: const MainScreenAdmin(),
          ),
        );
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnBoardingBloc(),
            child: const OnBoardingPage(),
          ),
        );
      case Routes.addNewAddress:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnBoardingBloc(),
            child: AddNewAddressPage(
              latLongModel: settings.arguments as LatLongModel,
            ),
          ),
        );
      case Routes.deliveryAddress:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LocationPermissionBloc(),
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
      case Routes.noInternet:
        return MaterialPageRoute(
          builder: (_) => NoInternetScreen(voidCallback: settings.arguments as VoidCallback),
        );
      case Routes.categoryAdmin:
        return MaterialPageRoute(
          builder: (_) => CategoryPageAdmin()
        );
      case Routes.categoryAdminAdd:
        return MaterialPageRoute(builder: (_) => CategoryAdminAddPage());
    }
    return null;
  }
}
