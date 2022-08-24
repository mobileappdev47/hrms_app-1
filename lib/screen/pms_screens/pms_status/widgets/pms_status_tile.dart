import 'package:flutter/material.dart';
import 'package:hrms_app/utils/app_style.dart';
import 'package:hrms_app/utils/color_res.dart';
import 'package:hrms_app/utils/font_res.dart';
import 'package:hrms_app/utils/image_res.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:math' as math;

Container pmsStatusTile() {
  return Container(
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularPercentIndicator(
            radius: 35.0,
            backgroundColor: ColorRes.orangeColor,
            lineWidth: 4.0,
            percent: 0.40,
            center: const Text("40%"),
            progressColor: Colors.green,
          ),
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
  );
}

class OpenPainter extends CustomPainter {
  // ignore: prefer_typing_uninitialized_variables
  final overdue;

  // ignore: prefer_typing_uninitialized_variables
  final completed;

  // ignore: prefer_typing_uninitialized_variables
  final inProgress;

  // ignore: prefer_typing_uninitialized_variables
  final range;

  // ignore: prefer_typing_uninitialized_variables
  final total;
  double pi = math.pi;

  OpenPainter(
      {this.overdue, this.completed, this.total, this.inProgress, this.range});

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 5;
    Rect myRect = const Offset(-70.0, -30.0) & const Size(65.0, 65.0);

    var paint1 = Paint()
      ..color = ColorRes.orange
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    var paint2 = Paint()
      ..color = ColorRes.green
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    var paint3 = Paint()
      ..color = ColorRes.lightYellow
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    var paint4 = Paint()
      ..color = ColorRes.redColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    var paint5 = Paint()
      ..color = ColorRes.grey
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double firstLineRadianStart = 0;
    double unAnsweredVal =
        (total - inProgress - completed - overdue) * range / total;
    double firstLineRadianEnd = (360 * unAnsweredVal) * math.pi / 180;
    canvas.drawArc(
        myRect, firstLineRadianStart, firstLineRadianEnd, false, paint1);

    // canvas.drawArc(
    //     myRect, firstLineRadianEnd, (360 * 5) * math.pi / 180 - 5, false, paint1);

    double completedVal = (completed) * range / total;
    double secondLineRadianEnd = getRadians(completedVal);
    canvas.drawArc(
        myRect, firstLineRadianEnd, secondLineRadianEnd, false, paint2);

    double inProgressVal = (inProgress) * range / total;
    double thirdLineRadianEnd = getRadians(inProgressVal);
    canvas.drawArc(myRect, firstLineRadianEnd + secondLineRadianEnd,
        thirdLineRadianEnd, false, paint3);

    double overdueVal = (overdue) * range / total;
    double forthLineRadianEnd = getRadians(overdueVal);
    canvas.drawArc(
        myRect,
        firstLineRadianEnd + secondLineRadianEnd + thirdLineRadianEnd,
        forthLineRadianEnd,
        false,
        paint4);

    // drawArc(Rect rect, double startAngle, double sweepAngle, bool useCenter, Paint paint)
  }

  double getRadians(double value) {
    return (360 * value) * pi / 180;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
