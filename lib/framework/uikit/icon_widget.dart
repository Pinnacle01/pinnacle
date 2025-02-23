import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinnacle_main/framework/constants/color.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.path,
    required this.size,
    this.color,
  });

  final String path;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return path.endsWith('.svg')
        ? SvgPicture.asset(
            path,
            width: size,
            height: size,
            colorFilter: ColorFilter.mode(
              color ?? CustomColors.whiteColor,
              BlendMode.srcIn,
            ),
          )
        : Image.asset(
            path,
            width: size,
            height: size,
            color: color ?? CustomColors.whiteColor,
          );
  }
}
