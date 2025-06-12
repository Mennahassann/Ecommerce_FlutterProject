import 'package:ecommerceproject/core/functions/alertexitapp.dart';
import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/logoauth.dart';
import 'package:ecommerceproject/controller/auth/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombottonauth.dart';
//import 'package:icons_plus/icons_plus.dart';
import '../../widget/auth/textsignup.dart';

class signUp extends StatelessWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '17'.tr, // "Sign Up"
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      ),
      body: WillPopScope(
          onWillPop:alertExitApp,
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const LogoAuth(),
              const SizedBox(
                height: 20,
              ),
              CustomTextTitleAuth(text: '17'.tr), // "Register Account"
              const SizedBox(height: 10),
              CustomTextBodyAuth(
                text: '24'.tr, // "Complete your details Or Continue with Social Media"
              ),
              const SizedBox(
                height: 35,
              ),
              textformAuth(
                isNumber: false ,
                valid: (val ) {
                  return validInput(val!, 3, 30, "username");
                },
                mycontroller: controller.username,
                hinttext: '23'.tr, // "Enter Your Username"
                iconData: Icons.person_2_outlined,
                labeltext: '20'.tr, // "Username"
              ),
              textformAuth(
                isNumber: false ,
                valid: (val ) {
                  return validInput(val!, 10, 100, "email");
                },
                mycontroller: controller.email,
                hinttext: '12'.tr, // "Enter Your Email Address"
                iconData: Icons.email_outlined,
                labeltext: '18'.tr, // "Email"
              ),
              textformAuth(
                isNumber: true ,
                valid: (val ) {
                  return validInput(val!, 7, 11, "phone");
                },
                mycontroller: controller.phone,
                hinttext: '22'.tr, // "Enter Your Phone number"
                iconData: Icons.phone_android_outlined,
                labeltext: '21'.tr, // "Phone"
              ),
              GetBuilder<SignUpControllerImp>(builder: (controller)=>textformAuth(
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
              CustomButtomAuth(
                text: '17'.tr, // "Sign Up"
                onPressed: () {
                  controller.signUp();
                },
              ),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                textone: '25'.tr, // "Have an account ?"
                texttwo: '9'.tr, // "Sign In"
                onTap: () {
                  controller.goToSignIn();
                },
              ),
              
            ],
          ),
        ),
      ))
    );
  }
}
