import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/screen/welcome_screen/welcome_screen_controller.dart';
import 'package:hrms_app/utils/app_res.dart';
import 'package:hrms_app/utils/app_style.dart';
import 'package:hrms_app/utils/color_res.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = WelcomeScreenController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Obx(
            () => SizedBox(
              height: Get.height * 0.55,
              child: PageView(
                controller: controller.pageController.value,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) => controller.onChange(index),
                children: controller.sliderList,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "HRMS",
                  style: AppTextStyle(
                      size: 26,
                      fontFamily: "rubik",
                      weight: FontWeight.w700,
                      textColor: ColorRes.blackText),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt u t labore et dolore magna aliqua",
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                    size: 14,
                    textColor: ColorRes.greyText,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: controller.buildPageIndicator(),
              ))
        ],
      ),
      bottomNavigationBar: Container(

        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Get.toNamed(AppRes.loginScreen),
              child: Container(
                height: 45,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color(0xFFE0D8D8).withOpacity(0.1),
                ),
                child: Center(
                  child: Text(
                    "Skip",
                    style: AppTextStyle(
                        fontFamily: "inter",
                        textColor: ColorRes.grey,
                        weight: FontWeight.w600,
                        size: 12),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => controller.onNextPage(),
              child: Container(
                height: 45,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorRes.orange,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
