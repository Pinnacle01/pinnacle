import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              AssetPath.userPostImage,
            ).image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(Sizes.size150.dp),
        ),
        height: Sizes.size216.dp,
        width: Sizes.size216.dp,
      ),
      TextWidget(
          text: "Username",
          size: Sizes.size20.sp,
          color: CustomColors.whiteColor),
      TextWidget(
        text: "@userId",
        size: Sizes.size15.dp,
        color: CustomColors.whiteColor,
      ),
    ]);
  }
}
