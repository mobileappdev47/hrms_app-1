import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/utils/image_res.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  Image.asset(ImageRes.blueBox),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: Get.height*0.15,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
