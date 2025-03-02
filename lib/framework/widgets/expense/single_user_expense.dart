import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/constants.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/circle_avatar_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class UnpaidUserExpense extends StatelessWidget {
  const UnpaidUserExpense({
    super.key,
    required this.userName,
    required this.unpaidExpense,
    required this.rupees,
    this.isOwned = false,
  });

  final String userName;
  final int unpaidExpense;
  final int rupees;
  final bool isOwned;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatarWidget(
          imagePath: AssetPath.userImage,
          imageType: ImageType.generalImage,
          radius: Sizes.size24.sp,
        ),
        SizedBox(width: Sizes.size10.dp),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: userName,
                size: Sizes.size16.sp,
                color: CustomColors.lightGreyB2B2B2,
              ),
              TextWidget(
                text: '$unpaidExpense ${GeneralString.unpaidExpense}',
                size: Sizes.size14.sp,
                color: CustomColors.lightGreyB2B2B2,
              ),
            ],
          ),
        ),
        TextWidget(
          text: '${Constants.inr}$rupees',
          size: Sizes.size16.sp,
          color: !isOwned ? CustomColors.whiteColor : CustomColors.greenColor,
        ),
        SizedBox(width: Sizes.size10.dp),
      ],
    );
  }
}
