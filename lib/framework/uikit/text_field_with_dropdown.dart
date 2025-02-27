import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class TextFieldDropDownWidget<T> extends StatefulWidget {
  final String label;
  final String hintText;
  final String initalValue;
  final List<String> dropDownList;
  final ValueChanged<String?> dropDownFunction;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? prefixIcon;
  final double? labelSize;
  final double? prefixSize;
  final Color? bgColor;
  final Color? labelColor;
  final Color? hintColor;
  final Color? fieldTextColor;
  final Color? prefixIconColor;
  final int? maxLength;

  const TextFieldDropDownWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.initalValue,
    required this.dropDownList,
    required this.dropDownFunction,
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
  State<TextFieldDropDownWidget<T>> createState() =>
      _TextFieldDropDownWidgetState<T>();
}

class _TextFieldDropDownWidgetState<T>
    extends State<TextFieldDropDownWidget<T>> {
  late String selectedValue;
  @override
  void initState() {
    selectedValue = widget.initalValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: widget.label,
              size: widget.labelSize ?? Sizes.size16.sp,
              fontWeight: FontWeight.bold,
              color: widget.labelColor ?? Colors.white,
            ),
            _dropDown(),
          ],
        ),
        _mainTextField(),
      ],
    );
  }

  Widget _mainTextField() => Container(
        padding: EdgeInsets.only(right: Sizes.size20.dp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size15.sp),
          color: widget.bgColor ?? CustomColors.navCardBackgroundColor222222,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: widget.controller,
                keyboardType: widget.keyboardType,
                style: TextStyle(
                  color: widget.fieldTextColor ?? CustomColors.whiteColor,
                ),
                maxLength: widget.maxLength,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: widget.bgColor ??
                      CustomColors.navCardBackgroundColor222222,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                      color: widget.hintColor ?? CustomColors.whiteColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Sizes.size15.sp),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            if (widget.prefixIcon != null) _prefixIconWidget(),
          ],
        ),
      );

  Widget _prefixIconWidget() => IconWidget(
        path: widget.prefixIcon!,
        size: widget.prefixSize ?? Sizes.size24.sp,
        color: widget.prefixIconColor ?? CustomColors.whiteColor,
      );

  Widget _dropDown() => Container(
        padding: EdgeInsets.symmetric(horizontal: Sizes.size10.dp),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedValue,
            dropdownColor: CustomColors.mainBackgroundColor161513,
            icon: IconWidget(
              path: AssetPath.dropDownIcon,
              color: CustomColors.whiteColor,
              size: Sizes.size16.sp,
            ),
            items: [widget.initalValue, ...widget.dropDownList]
                .map(
                  (city) => DropdownMenuItem(
                    value: city,
                    child: TextWidget(
                      text: city,
                      color: CustomColors.whiteColor,
                      size: Sizes.size16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                .toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  selectedValue = newValue;
                });
                widget.dropDownFunction(selectedValue);
              }
            },
          ),
        ),
      );
}
