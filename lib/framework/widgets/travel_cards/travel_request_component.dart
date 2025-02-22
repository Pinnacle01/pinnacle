import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/general_constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';

class TravelRequestCard extends StatelessWidget {
  const TravelRequestCard({
    super.key,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.days,
    required this.cityLocation,
  });

  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final String price;
  final int days;
  final String cityLocation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.size12.dp),
            color: CustomColors.navCardBackgroundColor3B3B3B_06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Image.asset(
                          AssetPath.userPostImage,
                        ).image,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(Sizes.size15.dp),
                    ),
                    height: Sizes.size200.dp,
                  ),
                  Positioned(
                    bottom: Sizes.size10.dp,
                    left: Sizes.size10.dp,
                    child: curvedBox(
                      cityLocation,
                      icon: Icons.location_on,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.size10.sp,
                  vertical: Sizes.size10.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: title,
                      color: Colors.white,
                      size: Sizes.size18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    TextWidget(
                      text: startDate.month == endDate.month
                          ? '${month[startDate.month - 1]} ${startDate.day} - ${endDate.day} '
                          : '${month[startDate.month - 1]} ${startDate.day} - ${month[endDate.month - 1]} ${endDate.day}',
                      color: Colors.white,
                      size: Sizes.size16.sp,
                    ),
                    TextWidget(
                      text: '₹$price',
                      color: Colors.white,
                      size: Sizes.size16.sp,
                    ),
                    Row(
                      children: [
                        IconWidget(
                          icon: Icons.alarm_sharp,
                          color: CustomColors.buttonBackgroundCreamColor,
                          size: Sizes.size15.sp,
                        ),
                        SizedBox(width: Sizes.size5.dp),
                        TextWidget(
                          text: '$days ${GeneralString.daysRemaining}',
                          color: CustomColors.buttonBackgroundCreamColor,
                          size: Sizes.size12.sp,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
