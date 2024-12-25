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
    List<Icon>? actionIcon}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(WidgetsSizes.appBarHeight),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 6,
            blurRadius: 6,
          ),
        ],
      ),
      child: AppBar(
        toolbarHeight: WidgetsSizes.appBarHeight,
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
    // margin: Margins.marginSmall,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(icons.length, (index) {
        return IconButton(
          onPressed: () {},
          icon: IconWidget(
            icon: icons[index],
            size: index == 2 ? 50 : 28, // Sizes to be
            color: CustomColors.buttonBackgroundCreamColor,
          ),
        );
      }),
    ),
  );
}

class CustomfloatingActionButton extends StatelessWidget {
  const CustomfloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: CustomColors.buttonBackgroundCreamColor,
      shape: const CircleBorder(),
      elevation: Elevation.large,
      child: IconWidget(
        icon: Icons.add,
        size: Sizes.size18.sp,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColors.navigationBackgroundColor,
      shape: const CircularNotchedRectangle(),
      height: WidgetsSizes.bottomBarHeight,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(
              icon: Icons.home,
              label: 'Home',
              color: CustomColors.buttonBackgroundCreamColor,
              isActive: true,
            ),
            _buildNavItem(
              icon: Icons.explore,
              label: 'General',
              color: CustomColors.buttonBackgroundCreamColor,
              isActive: false,
            ),
            SizedBox(
              width: Sizes.size10.sp,
            ),
            _buildNavItem(
              icon: Icons.person,
              label: 'Profile',
              color: CustomColors.buttonBackgroundCreamColor,
              isActive: false,
            ),
            _buildNavItem(
              icon: Icons.settings,
              label: 'Settings',
              color: CustomColors.buttonBackgroundCreamColor,
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required Color color,
    required bool isActive,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconWidget(
          icon: icon,
          size: Sizes.size24.sp,
          color: isActive ? color : CustomColors.lightBackgroundColor,
        )
        // Spacers.widthSmall,
        // TextWidget(
        //   text: label,
        //   color: isActive ? color : CustomColors.lightBackgroundColor,
        //   // size: Sizes.size2.h,
        //   type: isActive ? FontWeight.bold : FontWeight.normal,
        // ),
      ],
    );
  }
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
