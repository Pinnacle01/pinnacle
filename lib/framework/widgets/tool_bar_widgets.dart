import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

PreferredSizeWidget customAppBarWithShadow({
  required String titleName,
  Color? titleColor,
  IconData? iconPath,
  Color? iconColor,
  double? iconSize,
  Color? backgroundColor,
  List<IconWidget>? actionIcon,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(WidgetsSizes.appBarHeight.dp),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: Sizes.size6.sp,
            blurRadius: Sizes.size6.sp,
          ),
        ],
      ),
      child: AppBar(
        toolbarHeight: WidgetsSizes.appBarHeight.dp,
        title: TextWidget(
          text: titleName,
          color: titleColor ?? Colors.white,
          size: Sizes.size20.sp,
        ),
        leading: iconPath != null
            ? IconWidget(
                icon: iconPath,
                size: iconSize ?? Sizes.size24.sp,
                color: iconColor ?? Colors.white,
              )
            : BackButton(
                color: Colors.white,
                style: ButtonStyle(
                  iconSize: WidgetStateProperty.all(Sizes.size24.sp),
                ),
              ),
        actions: actionIcon,
        backgroundColor: backgroundColor ?? Colors.black,
      ),
    ),
  );
}

PreferredSizeWidget customAppBar(
    {required String titleName,
    Color? titleColor,
    Icon? leadingIcon,
    Color? backgroundColor,
    List<Icon>? actionIcon}) {
  return AppBar(
    title: TextWidget(
      text: titleName,
      color: titleColor ?? Colors.white,
    ),
    leading: leadingIcon,
    actions: actionIcon,
    backgroundColor: backgroundColor ?? Colors.black,
  );
}

Widget customBottomNavigator() {
  final List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.add_circle_outline,
    Icons.notifications,
    Icons.person,
  ];
  return Container(
    decoration: BoxDecoration(
      color: CustomColors.navCardBackgroundColor3B3B3B_06,
      borderRadius: BorderRadius.circular(Sizes.size8.dp),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        icons.length,
        (index) {
          return IconButton(
            onPressed: () {},
            icon: Icon(
              icons[index],
              size: index == 2 ? 50 : 28,
              color: CustomColors.buttonBackgroundCreamColor,
            ),
          );
        },
      ),
    ),
  );
}

Widget curvedBoxTapable({required String text, IconData? icon, Color? color}) {
  return InkWell(
    onTap: () {},
    child: curvedBox(text),
  );
}

Widget curvedBox(String text, {IconData? icon, Color? color}) {
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: Sizes.size5.dp, horizontal: Sizes.size15.dp),
    decoration: BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Visibility(
          visible: icon != null,
          child: Icon(
            icon!,
            size: Sizes.size15.sp,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        TextWidget(
          text: text,
          size: Sizes.size15.sp,
          fontWeight: FontWeight.bold,
        )
      ],
    ),
  );
}
