import 'package:flutter_competition/constants/constants.dart';
import 'package:flutter_competition/core/utils/base_utils.dart';
import 'package:hive/hive.dart';


class LocalSource {

  LocalSource(this.box);
  final Box<dynamic> box;

  void setLocale(String locale) {
    box.put(AppKeys.locale, locale);
  }

  void clear() {
    box.clear();
  }

  String get locale => box.get(
        AppKeys.locale,
        defaultValue: BaseFunctions.getDefaultLocale(),
      );

  Future<void> setPhoneNumber(String phoneNumber) async {
    await box.put(AppKeys.phoneNumber, phoneNumber);
  }

  void deletePhoneNumber() {
    box.delete(AppKeys.phoneNumber);
  }

  String get phoneNumber => box.get(AppKeys.phoneNumber, defaultValue: '');


  Future<void> setFirstTime({bool value = false}) async {
    await box.put(AppKeys.firstTime, value);
  }

  bool get firstTime => box.get(AppKeys.firstTime, defaultValue: false);

  
}
