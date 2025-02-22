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
    return InkWell(
      onTap: onPress,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size),
        ),
        child: iconType == IconType.svg
            ? SvgPicture.asset(
                iconPath,
                fit: BoxFit.cover,
              )
            : Image.asset(
                iconPath,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
