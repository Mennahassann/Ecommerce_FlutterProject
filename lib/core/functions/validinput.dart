import 'package:get/get.dart';

validInput(String val, int min, int max, String type,{String? confirmPassword}){
  if(type == "username"){
    if(!GetUtils.isUsername(val)){
      return "Please Enter a Valid username";

    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Please Enter a valid email address";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Please Enter a valid phone number";
    }
  }
  if (type == "confirmPassword") {
    if (val != confirmPassword) {
      return "Passwords do not match, Try again";
    }
  }


  if (val.isEmpty) {
    return "Can't be Empty";
  }

  if (val.length < min) {
    return "Can't be less than $min ,Try again";
  }

  if (val.length > max) {
    return "Can't be larger than $max ,Try again";
  }
}
