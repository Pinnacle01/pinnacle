import 'package:flutter/material.dart';
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
      decoration: BoxDecoration(color: CustomColors.mainTextColor),
      padding: EdgeInsets.all(Sizes.size15),
      child: Row(
        children: [
          Column(
            children: [
              TextWidget(
                  text: GeneralString.grouprequestcard,
                  size: Sizes.size15.sp,
                  fontWeight: FontWeight.w600),
              UserProfileCard(
                userName: userName,
                userImage: userImage,
                userProfileId: userId,
              ),
            ],
          ),
          Column(
            children: [
              ImageButtonWidget(
                iconPath: TempStrings.tickIcon,
                size: Sizes.size24.sp,
                onPress: () {},
                iconType: IconType.svg,
              ),
              ImageButtonWidget(
                iconPath: TempStrings.crossIcon,
                size: Sizes.size24.sp,
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
