import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.path,
    required this.size,
    this.fit,
    this.color,
  });

  final String path;
  final double size;
  final Color? color;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size),
      ),
      child: Image.asset(
        path,
        fit: fit ?? BoxFit.cover,
        color: color ?? CustomColors.whiteColor,
      ),
    );
  }
}
