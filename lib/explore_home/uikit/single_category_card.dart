import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

class SingleCategoryCard extends StatelessWidget {
  const SingleCategoryCard({
    super.key,
    required this.categoryImage,
    required this.onTap,
  });

  final String categoryImage;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      excludeFromSemantics: true,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(
                  categoryImage,
                ).image,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(Sizes.size20.dp),
            ),
            height: Sizes.size200.dp,
          ),
          Positioned(
            bottom: Sizes.size10.dp,
            left: Sizes.size10.dp,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: Sizes.size5.dp,
                horizontal: Sizes.size10.dp,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Sizes.size10.dp),
              ),
              child: TextWidget(
                text: AssetPath.biking,
                color: Colors.black,
                size: Sizes.size12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
