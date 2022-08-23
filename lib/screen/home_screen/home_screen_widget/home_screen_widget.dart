import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/utils/app_style.dart';

Widget homeScreenTopContainer({String? icon,text1,text2}){
  return Container(
    width: Get.width*0.29,
    padding: const EdgeInsets.symmetric(vertical: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 1.0,
          spreadRadius:1.0,
          offset: const Offset(-1,0)

        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(icon!),
        Text(text1,style: AppTextStyle(fontFamily: "inter",weight: FontWeight.w700,size: 30),),
        Text(text2,style: AppTextStyle(fontFamily: "inter",weight: FontWeight.w600,size: 14),),
      ],
    ),
  );
}