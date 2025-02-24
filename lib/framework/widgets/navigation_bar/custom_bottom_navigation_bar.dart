import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColors.mainBackgroundColor161513,
      shape: const CircularNotchedRectangle(),
      height: WidgetsSizes.bottomBarHeight.dp,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(
              icon: AssetPath.homeIcon,
              label: 'Home',
              color: CustomColors.buttonBackgroundCreamColor,
              isActive: true,
            ),
            _buildNavItem(
              icon: AssetPath.exploreIcon,
              label: 'General',
              color: CustomColors.buttonBackgroundCreamColor,
              isActive: false,
            ),
            _buildNavItem(
              icon: AssetPath.userProfileIcon,
              label: 'Profile',
              color: CustomColors.buttonBackgroundCreamColor,
              isActive: false,
            ),
            SizedBox(
              width: Sizes.size10.sp,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required String icon,
    required String label,
    required Color color,
    required bool isActive,
  }) {
    return IconWidget(
      path: icon,
      size: Sizes.size30.sp,
      fit: BoxFit.contain,
      color: isActive ? color : CustomColors.lightBackgroundColor,
    );
  }
}
