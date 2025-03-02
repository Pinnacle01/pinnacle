import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_button_widget.dart';

class CircleBackButtonWidget extends StatelessWidget {
  const CircleBackButtonWidget({
    super.key,
    this.bgColor,
    this.size,
    this.iconColor,
    this.iconPath,
    required this.onPress,
  });

  final Color? bgColor;
  final double? size;
  final Color? iconColor;
  final String? iconPath;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgColor ?? CustomColors.mainTextColor,
      child: IconButtonWidget(
        path: iconPath ?? AssetPath.leftButtonIcon,
        size: size ?? Sizes.size16.sp,
        color: iconColor ?? CustomColors.mainBackgroundColor161513,
        onPress: onPress,
      ),
    );
  }
}
