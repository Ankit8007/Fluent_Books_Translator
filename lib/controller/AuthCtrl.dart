
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Methods/Validation.dart';
import '../Models/RegistrationModel.dart';

class AuthCtrl extends GetxController{
  final TextEditingController emailLogin = TextEditingController();
  final TextEditingController passLogin = TextEditingController();
  final RegistrationModel regData = RegistrationModel(docList: [], photos: [], addressDetail: AddressDetails());

  login(callBack)async{

    if(isEmail(emailLogin.text) && isPassword(passLogin.text)){
      callBack(true);
    }else{
      callBack(false);
    }

  }

  register(callBack) async{}



}