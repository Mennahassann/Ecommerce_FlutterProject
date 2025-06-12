import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/checkemail_controller.dart';
import '../../../controller/auth/forgetpassword_controller.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/imageasset.dart';
import '../../widget/auth/custombottonauth.dart';
import '../../widget/auth/textsignup.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller =
    Get.put(CheckEmailControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.white ,
        title: const Text(
          'Forget Password',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.transparent, // Optional: set if you don't want a background color
                child: ClipOval(
                  child: Image.asset(
                    AppImageAsset.onBoardingImagesix,
                    fit: BoxFit.cover, // Ensures the image covers the CircleAvatar area fully


                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextTitleAuth(text: "Check Email"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text:
                  "Enter your Email Address to Check it, And Continue the process."),

              const SizedBox(
                height: 35,
              ),
              textformAuth(
                isNumber: false ,
                valid: (val ) {

                },
                mycontroller: controller.email,
                hinttext: "Enter Your Email Address",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),

              CustomButtomAuth(text: "Check", onPressed: () {
                controller.goToSuccessSignUp();
              }),


            ],
          )),
    );
  }
}
