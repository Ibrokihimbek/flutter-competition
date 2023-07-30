part of 'app_routes.dart';

sealed class Routes {
  Routes._();

  static const String main = '/main';
  static const String splash = '/splash';
  static const String onBoarding = '/onBoarding';
  static const String auth = '/auth';
  static const String noInternet = '/no_internet';

}
