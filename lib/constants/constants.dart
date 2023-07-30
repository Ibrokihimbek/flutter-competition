// import 'package:yandex_mapkit/yandex_mapkit.dart';

class Constants {
  Constants._();

  static const String telegramBot = 'https://t.me/qwattuz_bot';
  static const String telegramChanel = 'https://t.me/qwatt_uz';
  static const String instagram = 'https://www.instagram.com/qwattuz/';
  static const String facebook = 'https://www.facebook.com/qwattuz';
  static const String webSite = 'https://qwatt.uz/';
  static const String phoneNumber = '+998 95 474 80 80';
  static const String supportMail = 'mail@qwatt.uz';
  static const String baseUrl = '';
  static const String authUrl = 'https://api.auth.u-code.io';
  static const String adminUrl = 'https://api.admin.u-code.io';
  // static const Point point = Point(
  //   latitude: 41.2995,
  //   longitude: 69.2401,
  // );
}

class Validations {
  Validations._();
  static const emailEmpty = 'Email cannot be empty';
  static const notEmail = 'This is not email';
  static const passwordEmpty = 'Password cannot be empty';
  static const passwordShow = 'Password too short';
  static const passwordLong = 'Password too long';
  static const firstEmpty = 'Firstname cannot be empty';
  static const firstNameShort = 'Firstname too short';
  static const firstNameLong = 'Firstname too long';
  static const lastNameEmpty = 'Last name cannot be empty';
  static const lastNameShort = 'Lastname too short';
  static const lastNameLong = 'Lastname too long';
  static const passwordNotMatch = 'Passwords do not match';
  static const internetFailure = 'No Internet';
  static const somethingWentWrong = 'Something went wrong!';
}

class AppKeys {
  AppKeys._();
  static const locale = 'locale';
  static const filterData = 'filter_data';
  static const firstTime = 'firstTime';
  static const phoneNumber = 'phone_number';
  static const userId = 'setUserId';
  static const isLeaseOrders = 'isLeaseOrder';
  static const isFoundUserCards = 'isFoundUserCards';
  static const isYesDebt = 'isYesDebt';
  static const isYesActiveCard = 'isYesActiveCard';
  static const accessToken = 'access_token';
  static const name = 'name';
  static const referralUserId = 'referralUserId';
  static const gender = 'gender';
  static const dateOfBirth = 'dateOfBirth';
  static const xApiKey = 'P-LjlsEVqKmkuiQNYQEi5iZuH3WXVwUU45';
  static const resourceId = '9c429331-c8c4-4c33-ad09-ebe7cb886189';
  static const environmentId = '90a7edf7-5005-4b5a-aae1-5de1e741246e';
  static const projectId = '4dbfb907-8b4b-460b-906b-cc81c58e656c';
  static const clientTypeId = '457150ce-26ec-4b79-aaa2-7731401cd80c';
  static const companyId = 'f00b9d87-89e6-473e-a575-0d0664d9f5b4';
  static const expiresAt = '2025-06-23T06:00:10.049Z';
  static const roleId = 'd3fd64e5-69af-40cc-b7f6-2fc71eb8f6db';
  static const authorization = 'API-KEY';
  static const userInfo = 'user_info';
  static const merchantUserId = 'merchant_user_id';
  static const secretKey = 'secret_key';
  static const serviceId = 'service_id';
  static const test = 'test';
}

class Urls {
  Urls._();
  static const signInUrl = '/v2/send-code';
  static const confirmUrl = '/v2/login/with-option';
  static const registerUrl = '/v2/register';
  static const objectListUrl = '/v1/object/get-list/';
  static const objectUrl = '/v1/object/';
  static const objectUrlSlim = '/v1/object-slim/';
  static const invokeFunction = '/v1/invoke_function/';
}

class TableSlug {
  TableSlug._();
  static const users = 'users';
  static const user = 'user';
  static const merchantList = 'merchant_list';
  static const cabinetList = 'cabine_lists';
  static const pricingDesc = 'pricing_descs';
  static const orders = 'orders';
  static const pricingDescription = 'pricing_description';
  static const creditCardList = 'credit_card_list';
  static const venueType = 'venue_type';
  static const clickCredentials = 'click_credentials';
  static const getBonusAndLink = 'qwatt-getbonusanddlink-4dbfb907-8b4b-460b-906b-cc81c58e656c';
  static const getQwattGifts = 'qwatt-givegifts-4dbfb907-8b4b-460b-906b-cc81c58e656c';
  static const giveBonusV2 = 'qwatt-givebonusv2-4dbfb907-8b4b-460b-906b-cc81c58e656c';
  static const getRentalPackagePrice = 'qwatt-getsubscriptions-4dbfb907-8b4b-460b-906b-cc81c58e656c';
  static const buyRentalPackage = 'qwatt-tosubscribe-4dbfb907-8b4b-460b-906b-cc81c58e656c';
  static const subscribers = 'subsribers';
}


class CacheKeys {
  CacheKeys._();
  static const String merchant = 'merchant/';
}
