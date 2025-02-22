import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/general_constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';

class TravelRequestComponent extends StatelessWidget {
  const TravelRequestComponent({
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
            borderRadius: BorderRadius.circular(CircularRadius.medium),
            color: CustomColors.cardBackgroundColor,
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
                            TempStrings.userPostImage,
                          ).image,
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.circular(CircularRadius.medium),
                    ),
                    height: 180,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: curvedBox(
                      cityLocation,
                      icon: Icons.location_on,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: CircularRadius.medium,
                  right: CircularRadius.medium,
                  top: Sizes.size10,
                ),
                child: TextWidget(
                  text: title,
                  color: Colors.white,
                  size: Sizes.size20.sp,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: CircularRadius.medium),
                child: TextWidget(
                  text: startDate.month == endDate.month
                      ? '${month[startDate.month - 1]} ${startDate.day} - ${endDate.day} '
                      : '${month[startDate.month - 1]} ${startDate.day} - ${month[endDate.month - 1]} ${endDate.day}',
                  color: Colors.white,
                  size: Sizes.size16.sp,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: CircularRadius.medium),
                child: TextWidget(
                  text: '₹$price',
                  color: Colors.white,
                  size: Sizes.size16.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: CircularRadius.medium,
                  right: CircularRadius.medium,
                  bottom: Sizes.size10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm_sharp,
                      color: CustomColors.buttonBackgroundCreamColor,
                      size: Sizes.size15.sp,
                    ),
                    TextWidget(
                      text: '$days Days Remaining !',
                      color: CustomColors.buttonBackgroundCreamColor,
                      size: Sizes.size15.sp,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
