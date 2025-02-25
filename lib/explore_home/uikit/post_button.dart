import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

Widget postButton() {
  String text = 'Post your trip ';
  return SizedBox(
    width: Sizes.size372.dp,
    height: Sizes.size43.dp,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.buttonBackgroundCreamColor,
      ),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            Sizes.size105.dp, Sizes.size6.dp, Sizes.size105.dp, Sizes.size6.dp),
        child: TextWidget(
            text: text, color: CustomColors.mainBackgroundColor161513),
      ),
    ),
  );
}
