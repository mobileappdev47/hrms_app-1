import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/utils/image_res.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 110,
                ),
                Container(
                  height: 100,
                  width: Get.width,
                  child: Image.asset(ImageRes.blueBox,fit: BoxFit.fill,),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
