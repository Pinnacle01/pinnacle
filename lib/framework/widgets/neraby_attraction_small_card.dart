import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/image_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class NerabyAttractionSmallCard extends StatefulWidget {
  final String imagePath;
  final String locationName;
  final String distance;
  final Function onTap;

  const NerabyAttractionSmallCard({
    super.key,
    required this.locationName,
    required this.distance,
    required this.imagePath,
    required this.onTap,
  });

  @override
  State<NerabyAttractionSmallCard> createState() =>
      _NerabyAttractionSmallCardState();
}

class _NerabyAttractionSmallCardState extends State<NerabyAttractionSmallCard> {
  String iconPath = AssetPath.plusAddGreenIcon;
  bool isTick = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: Sizes.size35.sp / Sizes.size2.sp,
            right: Sizes.size35.sp / Sizes.size2.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageWidget(
                path: widget.imagePath,
                fit: BoxFit.cover,
                height: Sizes.size130.dp,
                width: Sizes.size220.dp,
                radius: Sizes.size5.dp,
              ),
              TextWidget(
                text: widget.locationName,
                size: Sizes.size16.sp,
                fontWeight: FontWeight.bold,
                color: CustomColors.whiteColor,
              ),
              TextWidget(
                text: widget.distance + GeneralString.kmAway,
                size: Sizes.size14.sp,
                color: CustomColors.whiteColor,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              if (!isTick) {
                iconPath = AssetPath.plusAddGreenIcon;
                isTick = true;
              } else {
                iconPath = AssetPath.minusRedIcon;
                isTick = false;
              }
              setState(() {});
            },
            child: IconWidget(
              path: iconPath,
              size: Sizes.size35.sp,
            ),
          ),
        ),
      ],
    );
  }
}
