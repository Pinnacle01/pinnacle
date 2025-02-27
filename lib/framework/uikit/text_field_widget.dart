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
  final String? prefixIcon;
  final double? labelSize;
  final double? prefixSize;
  final Color? bgColor;
  final Color? labelColor;
  final Color? hintColor;
  final Color? fieldTextColor;
  final Color? prefixIconColor;
  final int? maxLength;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.textFieldTheme,
    this.hintColor,
    this.labelColor,
    this.labelSize,
    this.bgColor,
    this.prefixIcon,
    this.prefixSize,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.fieldTextColor,
    this.prefixIconColor,
    this.maxLength,
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
            size: labelSize ?? Sizes.size16.sp,
            fontWeight: FontWeight.bold,
            color: labelColor ?? Colors.white,
          ),
          SizedBox(height: Sizes.size10.dp),
          Container(
            padding: EdgeInsets.only(right: Sizes.size20.dp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size15.sp),
              color: bgColor ?? CustomColors.navCardBackgroundColor222222,
            ),
            child: TextField(
              maxLength: maxLength,
              controller: controller,
              keyboardType: keyboardType,
              style: TextStyle(color: fieldTextColor ?? Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: bgColor ?? CustomColors.whiteShadeEBEDED,
                prefixIcon: (prefixSize != null && prefixIcon != null)
                    ? IconWidget(
                        path: prefixIcon!,
                        size: prefixSize!,
                      )
                    : null,
                hintText: hintText,
                hintStyle: TextStyle(
                    color:
                        hintColor ?? CustomColors.navCardBackgroundColor222222),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Sizes.size30.sp),
                  borderSide: BorderSide.none,
                ),
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
            size: labelSize ?? Sizes.size16.sp,
            fontWeight: FontWeight.bold,
            color: labelColor ?? CustomColors.lightBackgroundColor,
          ),
          SizedBox(height: Sizes.size10.dp),
          Container(
            padding: EdgeInsets.only(right: Sizes.size20.dp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size15.sp),
              color: bgColor ?? CustomColors.navCardBackgroundColor222222,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    keyboardType: keyboardType,
                    style: TextStyle(
                      color: fieldTextColor ?? CustomColors.blueColor,
                    ),
                    maxLength: maxLength,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:
                          bgColor ?? CustomColors.navCardBackgroundColor222222,
                      hintText: hintText,
                      hintStyle: TextStyle(
                          color:
                              hintColor ?? CustomColors.lightBackgroundColor,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Sizes.size15.sp),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                if (prefixIcon != null) _prefixIconWidget(),
              ],
            ),
          ),
        ],
      );

  Widget _prefixIconWidget() => IconWidget(
        path: prefixIcon!,
        size: prefixSize ?? Sizes.size20.sp,
        color: prefixIconColor ?? CustomColors.whiteColor,
      );
}
