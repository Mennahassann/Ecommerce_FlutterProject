import 'dart:ui';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/localization/changelocale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<localecontroller> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
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
                // Add an image at the top
                Image.asset(
                  'assets/images/lang.jpg', // Update with your actual image path
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.38,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: screenHeight * 0.05),

                // Title of the screen
                Text(
                  "Select Language",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.07,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),

                // Description or body of the screen
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    "Choose your preferred language for the app.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                      fontSize: screenWidth * 0.045,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.06),

                // Menu for language selection as ListTile widgets
                ListTile(
                  leading: const Icon(Icons.language, color: Colors.white),
                  title: Text(
                    "Arabic",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                  onTap: () {
                    controller.changeLang("ar");
                    Get.toNamed(AppRoute.onBoarding);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.language, color: Colors.white),
                  title: Text(
                    "English",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                  onTap: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoute.onBoarding);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
