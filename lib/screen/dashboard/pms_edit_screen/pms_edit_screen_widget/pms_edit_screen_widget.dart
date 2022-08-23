import 'package:flutter/material.dart';
import 'package:hrms_app/utils/app_style.dart';
import 'package:hrms_app/utils/color_res.dart';

List<Widget> generateChildren({
  List? text,
  List? selectedText,
}) {
  List<Widget> items = [];
  for (int i = 0; i <= 3; i++) {
    items.add(dimensionChips(text: text![i], isActive: false));
  }
  return items;
}

Widget dimensionChips({String? text, bool? isActive}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    margin: const EdgeInsets.only(right:5,bottom: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

        color: isActive == true ? ColorRes.greenDark : ColorRes.grey),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text!,
          style: AppTextStyle(
              textColor: isActive == true ? ColorRes.white : ColorRes.blackText,
              fontFamily: "inter",
              size: 14),
        ),
        if (isActive == true)
          Row(
            children: const [
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.check,
                color: Colors.white,
              )
            ],
          )
        else
          const SizedBox()
      ],
    ),
  );
}
