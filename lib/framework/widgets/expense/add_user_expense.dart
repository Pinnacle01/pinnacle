import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/constants.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/circle_avatar_widget.dart';
import 'package:pinnacle_main/framework/uikit/normal_text_field.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class ExpenseSplit extends StatefulWidget {
  const ExpenseSplit({
    super.key,
    required this.userImage,
    required this.userName,
    required this.expenseVariant,
    this.onChange,
    this.controller,
    this.value,
  });

  final String userImage;
  final String userName;
  final ExpenseVariant expenseVariant;
  final Function(bool)? onChange;
  final TextEditingController? controller;
  final bool? value;

  @override
  State<ExpenseSplit> createState() => _ExpenseSplitState();
}

class _ExpenseSplitState extends State<ExpenseSplit> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<WidgetState> states) {
      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.pressed,
        WidgetState.hovered,
        WidgetState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }

    return Row(
      children: [
        CircleAvatarWidget(
          imagePath: AssetPath.userImage,
          imageType: ImageType.generalImage,
          radius: Sizes.size24.sp,
        ),
        SizedBox(width: Sizes.size10.dp),
        Expanded(
          child: TextWidget(
            text: widget.userName,
            size: Sizes.size16.sp,
            color: CustomColors.whiteColor,
          ),
        ),
        if (widget.expenseVariant == ExpenseVariant.equal)
          Checkbox(
            checkColor: CustomColors.buttonBackgroundCreamColor,
            fillColor: WidgetStateColor.resolveWith(getColor),
            value: widget.value,
            onChanged: (value) {
              widget.onChange!(value!);
            },
          )
        else if (widget.expenseVariant == ExpenseVariant.percentage)
          Padding(
            padding: EdgeInsets.only(right: Sizes.size10.dp),
            child: Row(
              children: [
                SizedBox(
                  width: Sizes.size30.sp,
                  child: NormalTextFieldWidget(
                    controller: widget.controller!,
                  ),
                ),
                TextWidget(
                  text: Constants.percentSymbol,
                  size: Sizes.size20.sp,
                  color: CustomColors.whiteColor,
                )
              ],
            ),
          )
        else
          Padding(
            padding: EdgeInsets.only(right: Sizes.size20.dp),
            child: Row(
              children: [
                TextWidget(
                  text: Constants.inr,
                  size: Sizes.size20.sp,
                  color: CustomColors.whiteColor,
                ),
                SizedBox(
                  width: Sizes.size40.sp,
                  child: NormalTextFieldWidget(
                    controller: widget.controller!,
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
