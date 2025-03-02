import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key, this.isEditable});
  final bool? isEditable;

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
      if (isEditable == true) // Show edit icon only if isEditable is true

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
                text: "Username",
                size: Sizes.size20.sp,
                color: CustomColors.whiteColor),
            IconWidget(path: AssetPath.editIcon)
          ],
        ),
      TextWidget(
        text: "@userId",
        size: Sizes.size15.sp,
        color: CustomColors.whiteColor,
      ),
    ]);
  }
}
