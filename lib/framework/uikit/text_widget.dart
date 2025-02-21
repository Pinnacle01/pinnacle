import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.fontWeight,
      this.alignment});

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final TextAlign? alignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
      textAlign: alignment,
    );
  }
}