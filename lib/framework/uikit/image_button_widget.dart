import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/uikit/image_widget.dart';

enum IconType {
  icon,
  svg,
}

class ImageButtonWidget extends StatelessWidget {
  const ImageButtonWidget({
    super.key,
    required this.path,
    required this.height,
    required this.width,
    this.onPress,
    this.fit,
    this.onHover,
    this.radius,
  });

  final void Function()? onPress;
  final String path;
  final double height;
  final double width;
  final BoxFit? fit;
  final double? radius;
  final Function(bool)? onHover;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      onHover: (value) {
        onHover!(value);
      },
      child: ImageWidget(
        path: path,
        fit: fit,
        height: height,
        radius: radius,
        width: width,
      ),
    );
  }
}
