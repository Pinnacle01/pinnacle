import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.path,
    this.size,
    this.fit,
    this.color,
  });

  final String path;
  final double? size;
  final Color? color;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size ?? Sizes.size24.dp,
        width: size ?? Sizes.size24.dp,
        child: path.endsWith('.svg')
            ? SvgPicture.asset(
                path,
                fit: fit ?? BoxFit.none,
                colorFilter: ColorFilter.mode(
                  color ?? CustomColors.whiteColor,
                  BlendMode.srcIn,
                ),
              )
            : Image.asset(
                path,
                fit: fit ?? BoxFit.cover,
                color: color,
              ),
      ),
    );
  }
}
