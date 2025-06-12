import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          //height: 10,
          child: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
            textColor: Colors.white,
            onPressed: () {},
            color: const Color.fromARGB(255, 103, 101, 210),
            child: const Text("Continue"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
