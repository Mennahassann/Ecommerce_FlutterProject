//import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../data/datasource/static/static.dart';

abstract class onBoardingController extends GetxController {
  next();
  onpagechanged(int index);
}

class OnBoardingControllerImp extends onBoardingController {
  late PageController pageController;

  int currentPage = 0;
MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage > onboardinglist.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onpagechanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
