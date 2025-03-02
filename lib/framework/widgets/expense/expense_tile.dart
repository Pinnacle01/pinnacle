import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({
    super.key,
    required this.expenseType,
    required this.amount,
    required this.percentage,
  });

  final String expenseType;
  final String amount;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Sizes.size15.dp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: expenseType,
                  color: CustomColors.whiteColor,
                  size: Sizes.size16.sp,
                ),
                TextWidget(
                  text: '${Constants.inr}$amount',
                  color: CustomColors.lightBackgroundColor9A9A9A,
                  size: Sizes.size14.sp,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Sizes.size15.dp),
            width: Sizes.size150.dp,
            child: LinearProgressIndicator(
              color: CustomColors.whiteColor,
              value: percentage / 100,
              backgroundColor: CustomColors.cardBackgroundColor313131,
            ),
          ),
          TextWidget(
            text: percentage.toString(),
            color: CustomColors.whiteColor,
            size: Sizes.size16.sp,
          ),
        ],
      ),
    );
  }
}
