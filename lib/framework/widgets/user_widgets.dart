import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

class UserWidgets {
  static PreferredSizeWidget userTopProfileBar({
    required String userName,
    required String userImage,
    required bool userStatus,
    Color? titleColor,
    String? iconPath,
    Color? iconColor,
    double? iconSize,
    Color? backgroundColor,
    List<Icon>? actionIcon,
  }) {
    return PreferredSize(
      preferredSize: Size.fromHeight(WidgetsSizes.appBarHeight.dp),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: Sizes.size6.dp,
              blurRadius: Sizes.size6.dp,
            ),
          ],
        ),
        child: AppBar(
          toolbarHeight: WidgetsSizes.appBarHeight.dp,
          actions: actionIcon,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: Image.asset(
                  userImage,
                ).image,
                radius: Sizes.size20.sp,
              ),
              SizedBox(width: Sizes.size10.dp),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: userName,
                      color: Colors.white,
                      size: Sizes.size19.sp,
                      fontWeight: FontWeight.bold),
                  TextWidget(
                    text: userStatus ? 'Online' : 'Offline',
                    color: userStatus ? Colors.green : Colors.red,
                    size: Sizes.size15.sp,
                  ),
                ],
              )
            ],
          ),
          leading: IconWidget(
            path: iconPath ?? AssetPath.leftButtonIcon,
            size: Sizes.size24.sp,
            color: iconColor ?? Colors.white,
          ),
          backgroundColor:
              backgroundColor ?? CustomColors.mainBackgroundColor161513,
        ),
      ),
    );
  }

  static Widget chatTile({
    required String userName,
    required String userImage,
    String? usermessage,
    required DateTime userTime,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Sizes.size10.dp,
        horizontal: Sizes.size5.dp,
      ),
      decoration: BoxDecoration(
        color: CustomColors.mainBackgroundColor161513,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: Image.asset(
              userImage,
            ).image,
            radius: Sizes.size24.sp,
          ),
          SizedBox(
            width: Sizes.size20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: userName,
                  size: Sizes.size18.sp,
                  color: Colors.white,
                ),
                Visibility(
                  visible: usermessage != null,
                  child: TextWidget(
                    text: usermessage!,
                    size: Sizes.size16.sp,
                    color: CustomColors.lightBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          TextWidget(
            text:
                '''${userTime.hour.toString()} : ${userTime.minute.toString()}''',
            size: Sizes.size16.sp,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  static Widget settingsTab({
    required String iconPath,
    required String label,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: Sizes.size20.dp,
          horizontal: Sizes.size20.dp,
        ),
        decoration: BoxDecoration(
          color: CustomColors.blackColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconWidget(
              path: iconPath,
              size: Sizes.size24.sp,
              color: CustomColors.whiteColor,
            ),
            SizedBox(width: Sizes.size10.dp),
            Expanded(
              child: TextWidget(
                text: label,
                size: Sizes.size20.sp,
                color: Colors.white,
              ),
            ),
            IconWidget(
              path: AssetPath.rightBackButtonIcon,
              size: Sizes.size40.sp,
              color: CustomColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
