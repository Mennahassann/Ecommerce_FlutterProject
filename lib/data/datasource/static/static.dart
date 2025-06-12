import 'package:ecommerceproject/core/constant/imageasset.dart';
import 'package:ecommerceproject/data/model/onboardingmodel.dart';
import 'package:get/get.dart';

List<Onboardingmodel> onboardinglist = [

  Onboardingmodel(
    title: "2".tr, // "Discover Trendy\nNEW CLOTHES"
    body: "3".tr, // "Hey! Explore our online shopping experience."
    image: AppImageAsset.onBoardingImageOne,
  ),
  Onboardingmodel(
      title: "4".tr, // "Confirm Order"
      body: "5".tr, // "Review your items and confirm your order effortlessly."
      image: AppImageAsset.onBoardingImageTwo,),
  Onboardingmodel(
title: "6".tr, // "Easy & Safe\nPAYMENTS"
body: "7".tr, // "Easy Checkout & Safe Payment method, Trusted by our Customers from all over the world."
image: AppImageAsset.onBoardingImageThree,)
];
