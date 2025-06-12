import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/successresetpassword_controller.dart';
import '../../../core/constant/imageasset.dart';
import '../../widget/auth/custombottonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
    Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '32'.tr, // "Success"
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
                    AppImageAsset.onBoardingImageEight,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextTitleAuth(
                  text: '44'.tr), // "Password changed Successfully"
              const SizedBox(height: 40),
              CustomTextBodyAuth(
                  text:
                  '37'.tr), // "Congratulations, You have Changed your password Successfully, Go to Sign In to Continue."
              const SizedBox(
                height: 175,
              ),
              CustomButtomAuth(text: '9'.tr, onPressed: () { // "Sign In"
                controller.goToPageLogin();
              }),
            ],
          )),
    );
  }
}
