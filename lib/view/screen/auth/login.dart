import 'package:ecommerceproject/controller/auth/signup_controller.dart';
import 'package:ecommerceproject/core/functions/validinput.dart';
import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../widget/auth/custombottonauth.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Sign In',
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
              const LogoAuth(),
              const SizedBox(
                height: 20,
              ),
              const CustomTextTitleAuth(text: "Welcome Back"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text:
                      "Sign In With Your Email And Password OR Continue With Social Media"),
              const SizedBox(
                height: 35,
              ),
              textformAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 10, 100, "email");
                },
                mycontroller: controller.email,
                hinttext: "Enter Your Email Address",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),
              GetBuilder<LoginControllerImp>(
                builder: (controller) => textformAuth(
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
                      ? Icons
                          .visibility_off_outlined // Closed eye when password is hidden
                      : Icons.visibility_outlined,
                  labeltext: "19".tr,
                  // mycontroller: ,
                ),
              ),
              const Text(
                "Forget Password?",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.end,
              ),
              CustomButtomAuth(text: "Sign In", onPressed: () {}),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                textone: "Don't have an account ? ",
                texttwo: "SignUp",
                onTap: () {
                  controller.goToSignUp();
                },
              )
            ],
          )),
    );
  }
}
