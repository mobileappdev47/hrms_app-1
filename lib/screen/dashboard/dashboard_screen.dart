import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/screen/dashboard/dashboard_controller.dart';
import 'package:hrms_app/screen/dashboard/widgets/bottomNavigationBar.dart';
import 'package:hrms_app/utils/color_res.dart';


class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  controller =DashBoardController();
    return Scaffold(
      backgroundColor: ColorRes.backgroundColor,
      body: Obx(()=>controller.pages[controller.pageIndex.value]),
      bottomNavigationBar: Obx((){
        return bottomNavigationBar(
          context,
          controller.onTapBot,
          controller.pageIndex.value,
          controller.onTapFlatButton,
        );
      })
    );
  }
}


