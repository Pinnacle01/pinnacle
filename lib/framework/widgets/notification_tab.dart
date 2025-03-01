import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/uikit/circle_avatar_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

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
                padding: EdgeInsets.all(Sizes.size8.dp),
                child: CircleAvatarWidget(
                  imagePath: logoImage,
                  radius: Sizes.size22.sp,
                  imageType: ImageType.generalImage,
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
                        Sizes.size20.sp,
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
                  text: 'Notification Title',
                  color: Colors.white,
                  size: Sizes.size18.sp,
                  fontWeight: FontWeight.bold,
                ),
                TextWidget(
                  text: 'Notification Caption ..... Notification Substring',
                  color: Colors.white,
                  size: Sizes.size16.sp,
                ),
              ],
            ),
          ),
          TextWidget(
            text: '1m ago',
            color: CustomColors.lightBackgroundColor9A9A9A,
            size: Sizes.size16.sp,
          )
        ],
      ),
    );
  }
}
