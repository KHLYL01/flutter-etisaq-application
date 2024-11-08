import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLanguage(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('language', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? langShared = myServices.sharedPreferences.getString('language');
    if (langShared == 'ar') {
      language = const Locale('ar');
    } else if (langShared == 'en') {
      language = const Locale('en');
    } else {
      language = const Locale('er');
      myServices.sharedPreferences.setString('language', 'er');
      // language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
