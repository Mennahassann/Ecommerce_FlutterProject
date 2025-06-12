import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onboardinglist.length,
              (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 8),
                    duration: const Duration(milliseconds: 900),
                    width: controller.currentPage == index ? 20 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  )),
        ],
      ),
    );
  }
}
