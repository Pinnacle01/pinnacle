import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';
import 'package:sizer/sizer.dart';

class UserProfileCard extends StatelessWidget {
  final String userName;
  final String userImage;
  final String userProfileId;

  const UserProfileCard({
    super.key,
    required this.userName,
    required this.userImage,
    required this.userProfileId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: WidgetsSizes.profileTabHeight.sp,
      padding: EdgeInsets.only(left: Sizes.size20.sp),
      decoration: BoxDecoration(
        color: CustomColors.mainBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(userImage),
            radius: Sizes.size22.sp,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: Sizes.size15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWidget(
                text: userName,
                color: Colors.white,
                size: Sizes.size18.sp,
                type: FontWeight.bold,
              ),
              TextWidget(
                text: '@$userProfileId',
                color: CustomColors.lightBackgroundColor,
                size: Sizes.size16.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
