import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

class ScrollableNotesBox extends StatelessWidget {
  const ScrollableNotesBox({
    super.key,
    required this.hintText,
    this.hintColor,
    this.bgColor,
    this.controller,
    required this.scrollController,
    this.maxLength,
  });

  final String hintText;
  final TextEditingController? controller;
  final ScrollController scrollController;
  final Color? hintColor;
  final Color? bgColor;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.size100.dp,
      
      decoration: BoxDecoration(
        color: CustomColors.cardBackgroundColor313131,
        borderRadius: BorderRadius.circular(Sizes.size10.dp),
      ),
      padding: EdgeInsets.symmetric(horizontal: Sizes.size10.dp),
      child: Scrollbar(
        controller: scrollController,

        thumbVisibility: true,
        child: TextField(
          controller: controller,
          maxLength: maxLength ?? 500,
          maxLines: null,
          scrollController: scrollController,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            counterText: '',
          ),
          style: TextStyle(
            color: CustomColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
