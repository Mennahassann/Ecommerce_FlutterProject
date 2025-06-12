import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/localization/changelocale.dart';
import 'package:ecommerceproject/core/localization/translation.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:ecommerceproject/routes.dart';
import 'package:ecommerceproject/view/screen/auth/login.dart';
import 'package:ecommerceproject/view/screen/languages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerceproject/view/screen/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ensure services are initialized before the controller that depends on them
  await intialservices(); // Initialize your services before running the app

  // Initialize the necessary dependencies in the correct order
  Get.put(MyServices()); // Initialize MyServices first
  Get.put(localecontroller()); // Initialize the locale controller
  Get.put(OnBoardingControllerImp()); // Now it's safe to initialize OnBoardingControllerImp

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    localecontroller controller = Get.put(localecontroller());
    return GetMaterialApp(

      fallbackLocale: const Locale('en'), // Fallback to English if locale not found

      translations: MyTranslation(),
      title: 'Flutter Demo',
      locale: controller.language,
      //theme: ThemeData(fontFamily: "PlayfairDisplay"
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
         // ),
      //home: Login(),
      getPages: routes,
    );
  }
}
