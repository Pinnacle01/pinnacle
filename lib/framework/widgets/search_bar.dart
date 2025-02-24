import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const SearchBarWidget({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: GeneralString.search,
        prefixIcon: SizedBox(
          width: Sizes.size24.sp,
          child: IconWidget(
            path: AssetPath.searchIcon,
            color: CustomColors.navCardBackgroundColor3B3B3B,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.size10.dp),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: CustomColors.mainTextColor,
      ),
    );
  }
}
