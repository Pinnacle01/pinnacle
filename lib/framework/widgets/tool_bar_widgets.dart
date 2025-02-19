import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';

PreferredSizeWidget customAppBarWithShadow(
    {required String titleName,
    Color? titleColor,
    Icon? leadingIcon,
    Color? backgroundColor,
    List<Icon>? actionIcon,
    }) {
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
        title: TextWidget(
          text: titleName,
          color: titleColor ?? Colors.white,
          size: Sizes.size20.sp,
        ),
        leading: leadingIcon,
        actions: actionIcon,
        backgroundColor: backgroundColor ?? CustomColors.mainBackgroundColor,
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
    backgroundColor: backgroundColor ?? CustomColors.mainBackgroundColor,
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
      color: CustomColors.navigationBackgroundColor,
      borderRadius: BorderRadius.circular(Sizes.size8.dp),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(icons.length, (index) {
        return IconButton(
          onPressed: () {},
          icon: IconWidget(
            icon: icons[index],
            size: index == 2 ? 50 : 28,
            color: CustomColors.buttonBackgroundCreamColor,
          ),
        );
      }),
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
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
    decoration: BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Visibility(
          visible: icon != null,
          child: IconWidget(
            icon: icon!,
            size: Sizes.size15.sp,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        TextWidget(
          text: text,
          size: Sizes.size15.sp,
          type: FontWeight.bold,
        )
      ],
    ),
  );
}