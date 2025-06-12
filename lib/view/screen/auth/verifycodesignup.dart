import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verifycode_controller.dart';
import '../../../controller/auth/verifycodesignup_controller.dart';
import '../../../core/constant/imageasset.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '31'.tr, // "Verification Code"
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
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Image.asset(
                    AppImageAsset.onBoardingImageSeven,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextTitleAuth(text: '39'.tr), // "Verify Code"
              const SizedBox(height: 10),
              CustomTextBodyAuth(
                  text: '40'.tr), // "Please Enter The Digit Code sent to your Email Address."
              const SizedBox(
                height: 35,
              ),
              OtpTextField(
                fieldWidth: 50.0,
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  controller.goToSuccessSignUp();
                },
              ),
              SizedBox(height: 50),
            ],
          )),
    );
  }
}
