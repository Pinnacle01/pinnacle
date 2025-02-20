import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:sizer/sizer.dart';

class CustomfloatingActionButton extends StatelessWidget {
  const CustomfloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: CustomColors.buttonBackgroundCreamColor,
      shape: const CircleBorder(),
      elevation: Elevation.large,
      child: 
        Icon(
          Icons.add,
          size: Sizes.size18.sp,
        ),
    );
  }
}
