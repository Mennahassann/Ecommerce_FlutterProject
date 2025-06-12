import 'package:flutter/material.dart';

class textformAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscuretext;
  final void Function()? onTapIcon;


  const textformAuth(
      {Key? key,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
        required this.valid,
        required  this.isNumber,
        this.obscuretext,
        this.onTapIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 27),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator:valid ,
        obscureText: obscuretext == null || obscuretext == false  ? false : true,
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
