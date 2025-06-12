import 'package:ecommerceproject/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class localecontroller extends GetxController {
  Locale? language;
  MyServices myServices = Get.put(MyServices());

  // Function to change the language
  void changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // Retrieve the saved language from shared preferences
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");

    // Check the saved language and set the locale accordingly
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      Get.updateLocale(language!); // Update to Arabic
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      Get.updateLocale(language!); // Update to English
    } else {
      // Default to the device's language if no saved preference
      language = Locale(Get.deviceLocale!.languageCode);
      Get.updateLocale(language!);
    }
    super.onInit();
  }
}
