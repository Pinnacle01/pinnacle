import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';

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
        ),
        SizedBox(height: Sizes.size10.dp),
        TextWidget(
          text: label,
          color: isActive ? color : CustomColors.lightBackgroundColor,
          type: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ],
    );
  }
}
