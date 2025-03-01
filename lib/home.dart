import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';
import 'package:pinnacle_main/framework/uikit/normal_button.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NormalButton(
              buttonType: ButtonType.normal,
              onPress: () => RouteNavigator.go(context, '/component'),
              label: const TextWidget(
                text: 'Framework Component',
              ),
            ),
            NormalButton(
              buttonType: ButtonType.normal,
              onPress: () => RouteNavigator.go(context, '/explorepage'),
              label: const TextWidget(
                text: 'Explore Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
