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
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size),
      ),
      child: path.endsWith('.svg')
          ? SvgPicture.asset(
              path,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                color ?? CustomColors.whiteColor,
                BlendMode.srcIn,
              ),
            )
          : Image.asset(
              path,
              fit: BoxFit.cover,
              color: color ?? CustomColors.whiteColor,
            ),
    );
  }
}
