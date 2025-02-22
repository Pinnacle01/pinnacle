import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

class UserProfileCard extends StatelessWidget {
  final String userName;
  final String userImage;
  final String userProfileId;
  final Color? bgColor;

  const UserProfileCard({
    super.key,
    required this.userName,
    required this.userImage,
    required this.userProfileId,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(userImage),
            radius: Sizes.size24.sp,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: Sizes.size15.dp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: userName,
                color: Colors.white,
                size: Sizes.size20.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: Sizes.size5.dp),
              TextWidget(
                text: '@$userProfileId',
                color: CustomColors.lightBackgroundColor,
                size: Sizes.size14.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
