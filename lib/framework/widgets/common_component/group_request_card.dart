import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/uikit/image_button_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

class GroupRequestCard extends StatelessWidget {
  const GroupRequestCard({
    super.key,
    required this.userName,
    required this.userId,
    required this.userImage,
  });

  final String userName;
  final String userId;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.size15.dp,
        vertical: Sizes.size15.dp,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size25.dp),
        color: CustomColors.navCardBackgroundColor222222,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: GeneralString.grouprequestcard,
                  size: Sizes.size15.sp,
                  color: CustomColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: Sizes.size5.dp),
                UserProfileCard(
                  userName: userName,
                  userImage: userImage,
                  userProfileId: userId,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImageButtonWidget(
                iconPath: AssetPath.tickIcon,
                size: Sizes.size35.sp,
                onPress: () {},
                iconType: IconType.svg,
              ),
              SizedBox(height: Sizes.size5.dp),
              ImageButtonWidget(
                iconPath: AssetPath.crossIcon,
                size: Sizes.size35.sp,
                onPress: () {},
                iconType: IconType.svg,
              )
            ],
          ),
        ],
      ),
    );
  }
}
