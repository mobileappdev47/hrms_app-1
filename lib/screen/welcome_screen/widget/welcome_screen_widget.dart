import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/utils/color_res.dart';

class SliderPage extends StatelessWidget {
  final String image;
  final String content;

  const SliderPage({Key? key, required this.content, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image,height: Get.height*0.5,width: Get.width,),

        /*Text(
          content,
          maxLines: 3,
          textAlign: TextAlign.center,
        )*/
      ],
    );
  }
}

Widget indicator(bool isActive) {
  return SizedBox(
    height: 10,
    width: isActive ? 22 : 20,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: isActive ? 10 : 8.0,
      width: isActive ? 12 : 8.0,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(isActive ? 5 : 500),
        // shape: BoxShape.circle,
        color: isActive ? ColorRes.indicatorColor : Colors.white,
      ),
    ),
  );
}
