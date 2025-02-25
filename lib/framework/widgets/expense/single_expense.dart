import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/common_enums.dart';
import 'package:pinnacle_main/framework/constants/constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class SingleExpense extends StatelessWidget {
  const SingleExpense({
    super.key,
    required this.expenseType,
    required this.expenseTitle,
    required this.expenseDate,
    required this.expenseCost,
    required this.paidBy,
  });

  final ExpenseType expenseType;
  final String expenseTitle;
  final DateTime expenseDate;
  final String expenseCost;
  final String paidBy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.size15.dp,
        vertical: Sizes.size9.dp,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size15.dp),
        color: CustomColors.navCardBackgroundColor3B3B3B,
      ),
      child: Row(
        children: [
          IconWidget(
            path: '${Constants.iconPath}${expenseType.name}.png',
            size: Sizes.size24.sp,
          ),
          SizedBox(width: Sizes.size15.dp),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: expenseTitle,
                  size: Sizes.size20.sp,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whiteColor,
                ),
                TextWidget(
                  text: DateFormat.yMMM().format(expenseDate),
                  size: Sizes.size12.sp,
                  color: CustomColors.whiteColor,
                ),
              ],
            ),
          ),
          SizedBox(width: Sizes.size10.dp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextWidget(
                text: '${Constants.inr} $expenseCost',
                size: Sizes.size20.sp,
                fontWeight: FontWeight.bold,
                color: CustomColors.whiteColor,
              ),
              TextWidget(
                text: '${GeneralString.paidBy} $paidBy',
                size: Sizes.size12.sp,
                color: CustomColors.whiteColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
