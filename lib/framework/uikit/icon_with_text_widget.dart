import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
class IconWithTextWidget extends StatelessWidget {
  const IconWithTextWidget({
    super.key,
    required this.icon,
    required this.value,
  });

  final IconData icon;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: Sizes.size18.sp,
        ),
        const SizedBox(
          width: 10,
        ),
        TextWidget(
          text: value.toString(),
          size: Sizes.size18.sp,
          color: Colors.white,
        )
      ],
    );
  }
}
