import 'package:ecommerceproject/view/widget/onboarding/custombutton.dart';
import 'package:ecommerceproject/view/widget/onboarding/customslider.dart';
import 'package:ecommerceproject/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';

import 'package:get/get.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            //CustomDotControllerOnBoarding(),
          ]),
        ));
  }
}
