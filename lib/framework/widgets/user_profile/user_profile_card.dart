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
      height: WidgetsSizes.profileTabHeight.sp,
      padding: EdgeInsets.only(left: Sizes.size20),
      decoration: BoxDecoration(
        color: CustomColors.mainBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(userImage),
            radius: Sizes.size22.sp,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: Sizes.size15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                 userName,
                 style: TextStyle(
                    color: Colors.white,
                    fontSize: Sizes.size18.sp,
                    fontWeight: FontWeight.bold,
                 ),
              ),
              Text(
                '@$userProfileId',
                 style: TextStyle(
                    color: CustomColors.lightBackgroundColor,
                    fontSize: Sizes.size16.sp,
                 ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
