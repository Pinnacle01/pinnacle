import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.path,
    required this.size,
  });

  final String path;
  final double size;

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
            )
          : Image.asset(
              path,
              fit: BoxFit.cover,
            ),
    );
  }
}
