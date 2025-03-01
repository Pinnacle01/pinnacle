import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_button_widget.dart';

class CircleBackButtonWidget extends StatelessWidget {
  const CircleBackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: CustomColors.mainTextColor,
        child: IconButtonWidget(
            path: AssetPath.leftButtonIcon,
            size: Sizes.size14.dp,
            color: CustomColors.mainBackgroundColor161513,
            onPress: () {}));
  }
}
