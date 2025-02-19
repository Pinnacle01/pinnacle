import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/floating_action_button.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor,
      floatingActionButton: const CustomfloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: customAppBarWithShadow(
        titleName: UserString.appBarTitle,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/component'),
          child: const TextWidget(
            text: 'Framework Component  l Go to Component',
          ),
        ),
      ),
    );
  }
}
