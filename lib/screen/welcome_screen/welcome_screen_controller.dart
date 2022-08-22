import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:hrms_app/utils/app_res.dart';
import 'package:hrms_app/utils/image_res.dart';

import 'widget/welcome_screen_widget.dart';

class WelcomeScreenController extends GetxController implements GetxService {
 Rx<PageController> pageController = PageController().obs;
  RxInt selectedIndex = 0.obs;

  RxList<Widget> sliderList = [
    SliderPage(
      image: ImageRes.sliderPage1,
      content: "Lorem",
    ),
    SliderPage(
      image: ImageRes.sliderPage2,
      content: "Lorem",
    ),
    SliderPage(
      image: ImageRes.sliderPage3,
      content: "Lorem",
    ),
  ].obs;

  onChange(int index) {
    selectedIndex.value = index;
  }

  RxList<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == selectedIndex.value ? indicator(true) : indicator(false));
    }
    return list.obs;
  }

  onNextPage() {
    if (selectedIndex.value < 2) {
      pageController.value.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn).obs;
      selectedIndex++;
    }else {
      Get.toNamed(AppRes.loginScreen);
    }

  }
}
