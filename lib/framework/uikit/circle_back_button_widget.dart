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
        backgroundColor: CustomColors.mainBackgroundColor161513,
        child: IconButtonWidget(
            path: AssetPath.rightBackButtonIcon,
            size: Sizes.size14.dp,
            onPress: () {})

        // IconButton(
        //   icon: Icon(Icons.arrow_back, color: CustomColors.mainTextColor),
        //   onPressed: () => Navigator.pop(context),
        // ),
        );
  }
}
