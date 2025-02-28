import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';

class NormalTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final Color? bgColor;
  final Color? fieldTextColor;
  final bool? isfilled;
  const NormalTextFieldWidget({
    super.key,
    required this.controller,
    this.bgColor,
    this.isfilled = false,
    this.fieldTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: fieldTextColor ?? CustomColors.whiteColor,
      ),
      decoration: InputDecoration(
        filled: isfilled,
        fillColor: bgColor,
      ),
    );
  }
}
