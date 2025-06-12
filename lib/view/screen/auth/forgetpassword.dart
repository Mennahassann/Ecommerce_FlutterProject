import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forgetpassword_controller.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombottonauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '14'.tr, // "Forget Password"
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      AppImageAsset.onBoardingImagesix,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextTitleAuth(text: '27'.tr), // "Check Email"
                const SizedBox(height: 10),
                CustomTextBodyAuth(
                    text: '29'.tr), // "Please Enter Your Email Address To Receive A verification code."
                const SizedBox(
                  height: 35,
                ),
                textformAuth(
                  isNumber: false ,
                  mycontroller: controller.email,
                  hinttext: '12'.tr, // "Enter Your Email Address"
                  iconData: Icons.email_outlined,
                  labeltext: '18'.tr,
                  valid: (val ) {
                    return validInput(val!, 10, 100, "email");
                  }, // "Email"
                ),
                CustomButtomAuth(text: '30'.tr, onPressed: () { // "Check"
                  controller.goToVerfiyCode();
                }),
              ],
            ),
          )),
    );
  }
}
