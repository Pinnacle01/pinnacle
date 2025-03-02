import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: Size(Sizes.size100.dp, Sizes.size30.dp),
          padding: EdgeInsets.symmetric(vertical: Sizes.size5.dp),
          backgroundColor: CustomColors.darkgreyButtonColor),
      child: TextWidget(
        text: title,
        color: CustomColors.whiteColor,
      ),
    );
  }
}
