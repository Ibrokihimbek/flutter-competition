part of 'app_routes.dart';

sealed class Routes {
  Routes._();

  static const String main = '/main';
  static const String mainAdmin = '/main_admin';
  static const String splash = '/splash';
  static const String onBoarding = '/onBoarding';
  static const String auth = '/auth';
  static const String noInternet = '/no_internet';
  static const String profile = '/no_internet';
  static const String deliveryAddress = '/delivery_address';
  static const String language = '/language';
  static const String addNewAddress = '/add_new_address';
  static const String categoryAdmin = '/category_admin';
  static const String categoryAdminAdd = '/category_admin_add';

}
