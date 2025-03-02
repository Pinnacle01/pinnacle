import 'package:flutter/material.dart';

import 'package:pinnacle_main/framework/constants/enums.dart';

class CircleAvatarWidget extends StatelessWidget {
  final double radius;
  final ImageType imageType;
  final String imagePath;
  final Color? bgColor;
  final Widget? child;

  const CircleAvatarWidget({
    super.key,
    this.radius = 24,
    required this.imagePath,
    required this.imageType,
    this.bgColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: imageType == ImageType.networkImage
          ? NetworkImage(imagePath)
          : AssetImage(imagePath),
      backgroundColor: bgColor ?? Colors.transparent,
      child: child,
    );
  }
}
