import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/screen/home_screen/home_screen_widget/home_screen_widget.dart';
import 'package:hrms_app/utils/app_style.dart';
import 'package:hrms_app/utils/color_res.dart';
import 'package:hrms_app/utils/image_res.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.22,
              width: Get.width,
              child: Stack(
                children: [
                  Image.asset(
                    ImageRes.homeScreenTop,
                    height: Get.height * 0.15,
                    width: Get.width,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: Get.width,
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 75,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 1.0,
                                    offset: const Offset(0, 0))
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.person,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Welcome !",
                                    style: AppTextStyle(
                                      textColor: ColorRes.greyText,
                                      size: 20,
                                      fontFamily: "inter",
                                      weight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    " Kanchana",
                                    style: AppTextStyle(
                                      textColor: ColorRes.blackText,
                                      fontFamily: "inter",
                                      size: 20,
                                      weight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "HR Department",
                                style: AppTextStyle(
                                    textColor: ColorRes.greyText, size: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today’s Summary",
                    style: AppTextStyle(
                      textColor: ColorRes.homeScreenBlackColor,
                      fontFamily: "inter",
                      size: 15,
                      weight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      homeScreenTopContainer(
                          icon: ImageRes.appointmentHome,
                          text1: "2",
                          text2: "Appointments"),
                      homeScreenTopContainer(
                          icon: ImageRes.meeting,
                          text1: "0",
                          text2: "Meetings"),
                      homeScreenTopContainer(
                          icon: ImageRes.visit, text1: "0", text2: "Visit"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Upcomming Events",
                    style: AppTextStyle(
                        fontFamily: "inter",
                        weight: FontWeight.w600,
                        size: 15,
                        textColor: ColorRes.homeScreenBlackColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:ColorRes.lightGrey
                    ),
                    child: Center(child: Image.asset(ImageRes.eventImage),),

                  ),
                  Container(
                    width: Get.width,
                    height: 50,
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                        child: Text("Public Holidays & Events",style: AppTextStyle(fontFamily: "inter",size: 13,),textAlign: TextAlign.left,)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width,
                  //  margin: const EdgeInsets.only(right: 0, left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          offset: const Offset(0,0)
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height*0.15,
                          width: 90,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 1.0,
                                  offset: const Offset(0, 0))
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Welcome !",
                                  style: AppTextStyle(
                                    textColor: ColorRes.greyText,
                                    size: 20,
                                    fontFamily: "inter",
                                    weight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  " Kanchana",
                                  style: AppTextStyle(
                                    textColor: ColorRes.blackText,
                                    fontFamily: "inter",
                                    size: 20,
                                    weight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "HR Department",
                              style: AppTextStyle(
                                  textColor: ColorRes.greyText, size: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Current Month",
                    style: AppTextStyle(
                      textColor: ColorRes.homeScreenBlackColor,
                      fontFamily: "inter",
                      size: 15,
                      weight: FontWeight.w600,
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
