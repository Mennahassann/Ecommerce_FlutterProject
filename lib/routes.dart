import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/view/screen/auth/checkemail.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/login.dart';
import 'package:ecommerceproject/view/screen/auth/resetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/success_resetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/success_signup.dart';
import 'package:ecommerceproject/view/screen/auth/verifycode.dart';
import 'package:ecommerceproject/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerceproject/view/screen/languages.dart';
import 'package:ecommerceproject/view/screen/onboarding.dart';
import 'package:ecommerceproject/view/screen/auth/signup.dart';
import 'package:flutter/material.dart';

import 'core/middleware/mymiddleware.dart';
import 'view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const signUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const onBoarding()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
];
