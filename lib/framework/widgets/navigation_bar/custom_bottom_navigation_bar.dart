import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  const CustomBottomNavigationBar({super.key, required this.currentIndex});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  void _onItemTapped(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        RouteNavigator.go(context, '/component');
        break;
      case 1:
        RouteNavigator.go(context, '/explorepage');
        break;
      case 2:
        RouteNavigator.go(context, '/profileSection');
        break;
    }
  }

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
              index: 0,
              icon: AssetPath.homeIcon,
              label: 'Home',
            ),
            _buildNavItem(
              index: 1,
              icon: AssetPath.exploreIcon,
              label: 'Explore',
            ),
            _buildNavItem(
              index: 2,
              icon: AssetPath.userProfileIcon,
              label: 'Profile',
            ),
            SizedBox(width: Sizes.size10.sp),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon,
    required String label,
  }) {
    bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      // child: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      child: IconWidget(
        path: icon,
        size: Sizes.size30.sp,
        fit: BoxFit.contain,
        color: isActive
            ? CustomColors.buttonBackgroundCreamColor
            : CustomColors.lightBackgroundColor9A9A9A,
      ),
      // Text(
      //   label,
      //   style: TextStyle(
      //     fontSize: Sizes.size12.sp,
      //     color: isActive
      //         ? CustomColors.buttonBackgroundCreamColor
      //         : CustomColors.lightBackgroundColor,
      //   ),
      // ),
      // ],
      // ),
    );
  }
}
