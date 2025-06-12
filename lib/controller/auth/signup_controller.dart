import 'dart:convert';

import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../view/screen/auth/login.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToverfiyCodeSignUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  signUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();

      var url = Uri.parse(
          'http://192.168.1.3/ecommerce/signup.php'); // Replace with your local IP address
      var response = await http.post(url, body: {
        'username': username.text,
        'email': email.text,
        'phone': phone.text,
        'password': password.text,
      });

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        if (jsonResponse['status'] == 'success') {
          Get.offNamed(AppRoute.verfiyCodeSignUp);
          Get.delete<SignUpControllerImp>();
        } else {
          print("Sign-up failed: ${jsonResponse['message']}");
        }
      } else {
        print("Error with the server: ${response.statusCode}");
      }
    } else {
      print("Form is not valid");
    }
  }

  @override
  goToverfiyCodeSignUp() {
    Get.offNamed(AppRoute.verfiyCodeSignUp);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
}
