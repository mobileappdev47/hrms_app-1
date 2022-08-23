import 'package:flutter/material.dart';
import 'package:hrms_app/utils/app_style.dart';
import 'package:hrms_app/utils/color_res.dart';
import 'package:hrms_app/utils/font_res.dart';
import 'package:hrms_app/utils/image_res.dart';

Container pmsStatusTile() {
  return Container(
    height: 145,
    decoration: BoxDecoration(
        color: ColorRes.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        // border: Border.all(
        //   color: ColorRes.grey.withOpacity(0.5),
        // ),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2.0,
            offset: const Offset(0, 0))
      ],
    ),
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Row(
      children: [
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 33),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  ColorRes.orange,
                  ColorRes.darkBlue,
                ]),
          ),
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(ImageRes.profile))),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "George",
                style: AppTextStyle(
                    size: 19,
                    weight: FontWeight.w600,
                    textColor: const Color(0xff383838),
                    fontFamily: FontRes.inter),
              ),
              Text("Frontend Developer",
                  style: AppTextStyle(
                      size: 14,
                      weight: FontWeight.w500,
                      fontFamily: FontRes.inter,
                      textColor: ColorRes.grey2)),
              Text("A0021",
                  style: AppTextStyle(
                      size: 14,
                      weight: FontWeight.w500,
                      fontFamily: FontRes.inter,
                      textColor: ColorRes.grey2)),
              Text("A0021",
                  style: AppTextStyle(
                      size: 14,
                      weight: FontWeight.w500,
                      fontFamily: FontRes.inter,
                      textColor: ColorRes.grey2)),
            ],
          ),
        ),
        const Spacer(),
        Container(
          height: 145,
          width: 30,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color(0xffD9D9D9)),
          alignment: Alignment.center,
          child: Image.asset(ImageRes.nextArrowIcon, height: 40),
        )
      ],
    ),
  );
}
