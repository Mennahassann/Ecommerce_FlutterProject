import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  resetpassword() {}

  @override
  goToSuccessResetPassword() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.successResetpassword);
    } else if (password == repassword){
      Get.offNamed(AppRoute.successResetpassword);
      return "Passwords do not match, Try again";
    }
    else {
      print("not valid");
    }

  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}