import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab(
      {super.key, required this.logoImage, required this.count});

  final String logoImage;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(logoImage),
                  radius: Sizes.size22.sp,
                  backgroundColor: Colors.transparent,
                ),
              ),
              Visibility(
                visible: count != 0,
                child: Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        CircularRadius.large,
                      ),
                    ),
                    child: TextWidget(
                      text: count.toString(),
                      size: Sizes.size17.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: Sizes.size15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: GeneralString.notificationTitle,
                  color: Colors.white,
                  size: Sizes.size18.sp,
                  type: FontWeight.bold,
                ),
                TextWidget(
                  text: GeneralString.notificationCaption,
                  color: Colors.white,
                  size: Sizes.size16.sp,
                ),
              ],
            ),
          ),
          TextWidget(
            text: '1m ago',
            color: CustomColors.lightBackgroundColor,
            size: Sizes.size16.sp,
          )
        ],
      ),
    );
  }
}
