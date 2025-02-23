import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
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
    return Padding(
      padding: EdgeInsets.all(Sizes.size16.dp),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: IconWidget(
            path: AssetPath.searchIcon,
            size: Sizes.size5.dp,
            color: CustomColors.navCardBackgroundColor3B3B3B,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.size10.dp),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: CustomColors.mainTextColor,
          contentPadding: EdgeInsets.symmetric(vertical: Sizes.size10.dp),
        ),
      ),
    );
  }
}
