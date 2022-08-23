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
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(
              height: Get.height*0.22,
              width: Get.width,
              child: Stack(
                children: [

                  Image.asset(ImageRes.homeScreenTop,height: Get.height*0.15,width: Get.width,fit: BoxFit.fill,),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: Get.width,
                      margin: const EdgeInsets.only(right: 20,left: 20),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),

                            ),
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Welcome !",style: AppTextStyle(
                                      textColor: ColorRes.greyText
                                  ),),
                                  Text("Kanchana",style: AppTextStyle(
                                      textColor: ColorRes.blackText
                                  ),),
                                ],
                              ),
                              Text("HR Department",style: AppTextStyle(
                                  textColor: ColorRes.greyText,
                                size: 12
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today’s Summary",style: AppTextStyle(
                    textColor: ColorRes.homeScreenBlackColor
                  ),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      homeScreenTopContainer(icon: ImageRes.appointment,text1: "2",text2: "Appointments"),
                      homeScreenTopContainer(icon: ImageRes.meeting,text1: "0",text2: "Meetings"),
                      homeScreenTopContainer(icon: ImageRes.visit,text1: "0",text2: "Visit"),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Text("Upcomming Events",style: AppTextStyle(
                      textColor: ColorRes.homeScreenBlackColor
                  ),),
                  const SizedBox(height: 20,),
                  Container(
                    height: Get.height*0.3,

                  )
                ],
              ),
            )



          ],
        ),
      ),


    );
  }
}
