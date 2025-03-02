import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/image_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    this.profilePic,
    required this.username,
    required this.userId,
    required this.isEditable,
  });

  final String? profilePic;
  final String username;
  final String userId;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageWidget(
          path: profilePic ?? AssetPath.userImage,
          radius: Sizes.size150.dp,
          height: Sizes.size216.dp,
          width: Sizes.size216.dp,
          fit: BoxFit.cover,
        ),
        TextWidget(
          text: username,
          size: Sizes.size20.sp,
          color: CustomColors.whiteColor,
          fontWeight: FontWeight.bold,
        ),
        TextWidget(
          text: "@$userId",
          size: Sizes.size14.sp,
          color: CustomColors.greyChatColor,
        ),
      ],
    );
  }
}
