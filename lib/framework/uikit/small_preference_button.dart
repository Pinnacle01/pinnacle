import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class SmallPreferenceButton extends StatefulWidget {
  const SmallPreferenceButton({
    super.key,
    required this.label,
    this.labelSize,
    this.defaultLabelColor,
    this.onTaplabelColor,
    this.defaultBgColor,
    this.onTapBgColor,
    required this.onTap,
  });

  final String label;
  final double? labelSize;
  final Color? defaultLabelColor;
  final Color? onTaplabelColor;
  final Color? defaultBgColor;
  final Color? onTapBgColor;
  final Function() onTap;

  @override
  State<SmallPreferenceButton> createState() => _SmallPreferenceButtonState();
}

class _SmallPreferenceButtonState extends State<SmallPreferenceButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
        widget.onTap();
      },
      child: Container(
        margin: EdgeInsets.only(right: Sizes.size10.sp),
        padding: EdgeInsets.symmetric(
          vertical: Sizes.size8.dp,
          horizontal: Sizes.size16.dp,
        ),
        decoration: BoxDecoration(
          color: !isSelected
              ? (widget.defaultBgColor ??
                  CustomColors.navCardBackgroundColor222222)
              : (widget.onTapBgColor ??
                  CustomColors.buttonBackgroundCreamColor),
          borderRadius: BorderRadius.circular(Sizes.size5.dp),
        ),
        child: TextWidget(
          text: widget.label,
          color: !isSelected
              ? (widget.defaultLabelColor ?? CustomColors.lightBackgroundColor)
              : (widget.onTaplabelColor ?? CustomColors.whiteColor),
          size: widget.labelSize ?? Sizes.size14.sp,
        ),
      ),
    );
  }
}
