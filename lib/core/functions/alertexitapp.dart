import 'dart:io';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "Alert!",
    titleStyle: const TextStyle(fontWeight: FontWeight.bold),
    middleText: "Are You sure you want to Exit app?",
    actions: [
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 112, 135, 202),
          ),
          // Corrected textStyle
          textStyle: MaterialStateProperty.all(
            const TextStyle(color: Colors.white),
          ),
        ),
        onPressed: () {
          exit(0);
        },
        child: const Text("Yes",style: TextStyle(color: Colors.white),),
      ),
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColor.primaryColor),
        ),
        onPressed: () {
          Get.back();
        },
        child: const Text("Cancel",style: TextStyle(color: Colors.white),
      ),)
    ],
  );
  return Future.value(true);
}
