import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/resetpassword_controller.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombottonauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '43'.tr, // "Reset Password"
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
                      AppImageAsset.onBoardingImageFive,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextTitleAuth(text: '35'.tr), // "New Password"
                const SizedBox(height: 10),
                CustomTextBodyAuth(
                    text: '41'.tr), // "Please Enter New password and Confirm it."
                const SizedBox(
                  height: 35,
                ),
                GetBuilder<ResetPasswordControllerImp>(builder: (controller)=>textformAuth(
                  obscuretext: controller.isshowpassword,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 30, "password");
                  },
                  mycontroller: controller.password,
                  hinttext: "13".tr,

                  iconData: controller.isshowpassword
                      ? Icons.visibility_off_outlined  // Closed eye when password is hidden
                      : Icons.visibility_outlined,
                  labeltext: "19".tr,
                  // mycontroller: ,
                ),),
                GetBuilder<ResetPasswordControllerImp>(builder: (controller)=>textformAuth(
                  obscuretext: controller.isshowpassword,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 8, 30, "confirmPassword", confirmPassword: controller.password.text);
                  },
                  mycontroller: controller.repassword,
                  hinttext: '42'.tr,

                  iconData: controller.isshowpassword
                      ? Icons.visibility_off_outlined  // Closed eye when password is hidden
                      : Icons.visibility_outlined,
                    labeltext: '43'.tr
                  // mycontroller: ,
                ),),
                CustomButtomAuth(text: '33'.tr, onPressed: () { // "Save"
                  controller.goToSuccessResetPassword();
                }),
              ],
            ),
          )),
    );
  }
}
// textformAuth(
//   isNumber: false ,
//   valid: (val ) {
//     return validInput(val!, 8, 30, "confirmPassword", confirmPassword: controller.password.text);
//   },
//   mycontroller: controller.repassword,
//   hinttext: '42'.tr, // "Confirm Your new password"
//   iconData: Icons.lock_outline,
//   labeltext: '43'.tr, // "Confirm Password"
// ),