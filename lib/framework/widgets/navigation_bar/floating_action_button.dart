import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';

class CustomfloatingActionButton extends StatelessWidget {
  const CustomfloatingActionButton({
    super.key,
    required this.onPress,
  });

  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      backgroundColor: CustomColors.buttonBackgroundCreamColor,
      shape: const CircleBorder(),
      elevation: Elevation.large,
      child: IconWidget(
        path: AssetPath.plusIcon,
        color: CustomColors.whiteColor,
        size: Sizes.size24.sp,
      ),
    );
  }
}
