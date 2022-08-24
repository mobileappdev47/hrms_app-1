import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/screen/dashboard/pms_edit_screen/pms_edit_screen.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/widgets/pms_status_tile.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/widgets/widgets.dart';
import 'package:hrms_app/utils/color_res.dart';
import 'package:hrms_app/utils/string_res.dart';

class PmsStatusScreen extends StatelessWidget {
  const PmsStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          appBar(),
          Container(
            padding: const EdgeInsets.only(bottom: 17, right: 10, left: 10),
            decoration: const BoxDecoration(
              color: ColorRes.white2, /*border: Border.all()*/
            ),
            child: Row(
              children: [
                pmsBox(
                    topColor: ColorRes.redColor,
                    title: Strings.overdue,
                    text: 10),
                pmsBox(
                    topColor: ColorRes.orangeColor,
                    title: Strings.notStarted,
                    text: 15),
                pmsBox(
                    topColor: ColorRes.lightYellow,
                    title: Strings.inProgress,
                    text: 4),
                pmsBox(
                    topColor: ColorRes.lightGreen,
                    title: Strings.completed,
                    text: 5),
              ],
            ),
          ),
         /* Container(
            height: 145,
            decoration: BoxDecoration(
              color: ColorRes.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 33),
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
                        image: DecorationImage(
                            image: AssetImage(ImageRes.profile))),
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
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomPaint(
                        painter: OpenPainter(
                          total: 34,
                          completed: 5,
                          inProgress: 4,
                          overdue: 10,
                          range: 1,
                        ),
                      ),
                    ),
                    // Positioned(
                    //   // alignment: Alignment.center,
                    //   child: Text("5%"),
                    // )
                  ],
                ),
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
          ),*/
          Container(
              color: ColorRes.white,
              child: ListView.builder(
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Get.to(() => const PmsEditScreen());
                        },
                        child: pmsStatusTile());
                  }))
        ],
      ),
    );
  }
}
