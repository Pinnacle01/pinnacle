import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconType {
  icon,
  svg,
}

class ImageButtonWidget extends StatelessWidget {
  const ImageButtonWidget({
    super.key,
    required this.iconPath,
    required this.size,
    required this.onPress,
    required this.iconType,
  });

  final void Function() onPress;
  final String iconPath;
  final double size;
  final IconType iconType;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: iconType == IconType.svg
          ? SvgPicture.asset(iconPath)
          : Image.asset(iconPath),
      iconSize: size,
      onPressed: onPress,
    );
  }
}
