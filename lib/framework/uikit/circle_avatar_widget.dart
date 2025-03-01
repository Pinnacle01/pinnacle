import 'package:flutter/material.dart';

import 'package:pinnacle_main/framework/constants/enums.dart';

class CircleAvatarWidget extends StatelessWidget {
  final double size;
  final ImageType imageType;
  final String imagePath;
  final Color? bgColor;
  final Widget? child;

  const CircleAvatarWidget({
    super.key,
    this.size = 100,
    required this.imagePath,
    required this.imageType,
    this.bgColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: imageType == ImageType.networkImage
          ? NetworkImage(imagePath)
          : AssetImage(imagePath),
      backgroundColor: bgColor ?? Colors.transparent,
      child: child,
    );
  }
}
