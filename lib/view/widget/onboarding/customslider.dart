import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onpagechanged(val);
      },
      itemCount: onboardinglist.length,
      itemBuilder: (context, i) => Stack(
        children: [
          // Semi-circular background at the bottom
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: double.infinity,
              height: screenHeight * 0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 112, 135, 202),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),

          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.08),
                Image.asset(
                  onboardinglist[i].image!,
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.35,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: screenHeight * 0.05),
                Text(
                  onboardinglist[i].title!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.056,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    onboardinglist[i].body!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                      fontSize: screenWidth * 0.045,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.06),
                GetBuilder<OnBoardingControllerImp>(
                  builder: (controller) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardinglist.length,
                      (index) => AnimatedContainer(
                        margin: EdgeInsets.only(right: screenWidth * 0.02),
                        duration: const Duration(milliseconds: 900),
                        width: controller.currentPage == index
                            ? screenWidth * 0.05
                            : screenWidth * 0.015,
                        height: screenHeight * 0.01,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
              ],
            ),
          ),

          Positioned(
            bottom: screenHeight * 0.03,
            right: screenWidth * 0.05,
            child: controller.currentPage == onboardinglist.length - 1
                ? Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(AppRoute.login);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 148, 167, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                          horizontal: screenWidth * 0.2,
                        ),
                      ),
                      child: Text("8".tr,

                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      controller.next();
                    },
                    child: Container(
                      width: screenWidth * 0.15,
                      height: screenWidth * 0.15,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 148, 167, 224),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
