import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class GeneralComponent {
  static Widget requestCardDataInfo({
    required String title,
    required String iconPath,
    double? iconSize,
    Color? iconColor,
    double? titleSize,
    Color? titleColor,
  }) =>
      Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: Sizes.size5.dp),
            width: Sizes.size40.sp,
            height: Sizes.size40.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size10.dp),
              color: CustomColors.cardBackgroundColor313131,
            ),
            child: IconWidget(
              path: iconPath,
              size: iconSize ?? Sizes.size24.sp,
              color: iconColor,
            ),
          ),
          SizedBox(width: Sizes.size15.dp),
          Expanded(
            child: TextWidget(
              text: title,
              size: titleSize ?? Sizes.size16.sp,
              color: titleColor ?? CustomColors.whiteColor,
            ),
          ),
        ],
      );
}
