import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';

class UserWidgets {
  PreferredSizeWidget userTopProfileBar(
      {required String userName,
      required String userImage,
      required bool userStatus,
      Color? titleColor,
      Icon? leadingIcon,
      Color? backgroundColor,
      List<Icon>? actionIcon}) {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 6,
              blurRadius: 6,
            ),
          ],
        ),
        child: AppBar(
          toolbarHeight: AppBar().preferredSize.height,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: Image.asset(
                  userImage,
                ).image,
                radius: Sizes.size20.sp,
              ),
              SizedBox(width: Sizes.size20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: userName,
                    color: Colors.white,
                    size: Sizes.size19.sp,
                    type: FontWeight.bold,
                  ),
                  TextWidget(
                    text: userStatus ? 'Online' : 'Offline',
                    color: userStatus ? Colors.green : Colors.red,
                    size: Sizes.size15.sp,
                  ),
                ],
              )
            ],
          ),
          leading: leadingIcon,
          actions: actionIcon,
          backgroundColor: backgroundColor ?? CustomColors.mainBackgroundColor,
        ),
      ),
    );
  }

  Widget chatTile(
      {required String userName,
      required String userImage,
      String? usermessage,
      required DateTime userTime}) {
    return Container(
      height: WidgetsSizes.chatTabHeight,
      padding: EdgeInsets.symmetric(horizontal: Sizes.size20),
      decoration: BoxDecoration(
        color: CustomColors.mainBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: Image.asset(
              userImage,
            ).image,
            radius: Sizes.size20.sp,
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
                    color: Colors.white,
                    size: Sizes.size18.sp,
                    type: FontWeight.bold),
                Visibility(
                  visible: usermessage != null,
                  child: TextWidget(
                    text: usermessage!,
                    color: CustomColors.lightBackgroundColor,
                    size: Sizes.size16.sp,
                  ),
                ),
              ],
            ),
          ),
          TextWidget(
            text: '${userTime.hour.toString()} : ${userTime.minute.toString()}',
            color: Colors.white,
            size: Sizes.size15.sp,
          ),
        ],
      ),
    );
  }
}
