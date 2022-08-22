import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController implements GetxService{
  TextEditingController userNameController = TextEditingController();
  RxBool isShow = true.obs;

  onChangePassShow(){

    if(isShow.value){
      isShow.value = false;
    }else{
      isShow.value = true;
    }
  }





}