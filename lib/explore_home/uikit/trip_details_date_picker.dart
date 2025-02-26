import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

Widget buildTextFieldForDates(
  String label, {
  String? hint,
  IconData? icon,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: Sizes.size10.dp),
    child: TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: CustomColors.lightBackgroundColor),
        hintText: hint,
        hintStyle: TextStyle(color: CustomColors.lightBackgroundColor),
        prefixIcon: icon != null
            ? Icon(icon, color: CustomColors.lightBackgroundColor)
            : null,
        filled: true,
        fillColor: CustomColors.navCardBackgroundColor222222,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.size10.dp)),
      ),
      style: TextStyle(color: CustomColors.mainTextColor),
    ),
  );
}

Widget buildDateSelector() {
  return Row(
    children: [
      Expanded(
          child: buildTextFieldForDates(
        'Start',
        icon: Icons.calendar_today,
      )),
      SizedBox(width: Sizes.size10.dp),
      Expanded(
          child: buildTextFieldForDates(
        'End',
        icon: Icons.calendar_today,
      )),
    ],
  );
}
