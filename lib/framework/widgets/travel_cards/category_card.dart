import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(
                  TempStrings.categoryImage,
                ).image,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(CircularRadius.medium),
            ),
            height: 210,
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextWidget(
                text: TempStrings.biking,
                color: Colors.black,
                size: Sizes.size18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
