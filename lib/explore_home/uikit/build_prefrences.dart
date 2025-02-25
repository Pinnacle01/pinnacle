import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

Widget buildPreferences() {
  return Flexible(
    child: Row(
      children: [
        _buildPreferenceChip('No Alcohol'),
        SizedBox(width: Sizes.size10.dp),
        _buildPreferenceChip('No Smoking'),
        SizedBox(width: Sizes.size8.dp),
        _buildPreferenceChip('Bikes'),
      ],
    ),
  );
}

Widget _buildPreferenceChip(String label) {
  return SizedBox(
    height: 28,
    width: 92.77,
    child: Chip(
      label: TextWidget(
          text: label,
          color: CustomColors.mainBackgroundColor161513,
          size: Sizes.size13.sp),
      backgroundColor: CustomColors.mainTextColor,
      padding: EdgeInsets.fromLTRB(
          Sizes.size16.dp, Sizes.size6.dp, Sizes.size16.dp, Sizes.size6.dp),
    ),
  );
}
