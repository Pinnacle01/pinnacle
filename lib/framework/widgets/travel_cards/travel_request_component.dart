import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/general_constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';
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
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Sizes.size20.sp,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: CircularRadius.medium),
                child: Text(
                  startDate.month == endDate.month
                      ? '${month[startDate.month - 1]} ${startDate.day} - ${endDate.day} '
                      : '${month[startDate.month - 1]} ${startDate.day} - ${month[endDate.month - 1]} ${endDate.day}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Sizes.size16.sp,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: CircularRadius.medium),
                child: Text(
                  '₹$price',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Sizes.size16.sp,
                  ),
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
                    Text(
                      '$days Days Remaining !',
                      style: TextStyle(
                        color: CustomColors.buttonBackgroundCreamColor,
                        fontSize: Sizes.size15.sp,
                      ),
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
