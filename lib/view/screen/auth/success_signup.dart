import 'package:ecommerceproject/core/constant/color.dart';
//import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/get.dart';
import '../../../core/constant/imageasset.dart';
import '../../widget/auth/custombottonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import 'package:ecommerceproject/controller/auth/signup_controller.dart';
import 'package:ecommerceproject/controller/auth/successsignup_controller.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
    Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.white ,
        title:  Text(
          '32'.tr,
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
                    AppImageAsset.onBoardingImageEight,
                    fit: BoxFit.cover, // Ensures the image covers the CircleAvatar area fully


                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               CustomTextTitleAuth(text: '38'.tr),
              const SizedBox(height: 10),
               CustomTextBodyAuth(
                  text:
                  '45'.tr),

              const SizedBox(
                height: 175,
              ),


              CustomButtomAuth(text: '26'.tr, onPressed: () {
                controller.goToPageLogin();
              }),


            ],
          )),
    );
  }
}