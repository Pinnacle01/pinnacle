import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

enum TextFeildTheme {
  light,
  dark,
}

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextFeildTheme textFieldTheme;
  final String? prefixLabel;
  final double? prefixSize;

  const TextFieldWidget({
    super.key,
    required this.label,
    this.prefixLabel,
    this.prefixSize,
    required this.hintText,
    required this.textFieldTheme,
    this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    switch (textFieldTheme) {
      case TextFeildTheme.light:
        return _lightThemeField();
      case TextFeildTheme.dark:
        return _darkThemeField();
    }
  }

  Widget _lightThemeField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: label,
            size: Sizes.size16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          SizedBox(height: Sizes.size10.dp),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: CustomColors.whiteShadeEBEDED,
              prefixIcon: (prefixSize != null && prefixLabel != null)
                  ? IconWidget(path: prefixLabel!, size: prefixSize!)
                  : null,
              hintText: hintText,
              hintStyle:
                  TextStyle(color: CustomColors.navCardBackgroundColor222222),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.size30.sp),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      );

  Widget _darkThemeField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: label,
            size: Sizes.size16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          SizedBox(height: Sizes.size10.dp),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            style: TextStyle(color: CustomColors.blueColor),
            decoration: InputDecoration(
              filled: true,
              fillColor: CustomColors.navCardBackgroundColor222222,
              prefixIcon: (prefixSize != null && prefixLabel != null)
                  ? IconWidget(path: prefixLabel!, size: prefixSize!)
                  : null,
              hintText: hintText,
              hintStyle: TextStyle(color: CustomColors.whiteColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.size15.sp),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      );
}
