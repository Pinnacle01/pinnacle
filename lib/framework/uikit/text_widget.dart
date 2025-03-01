import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.fontWeight,
    this.alignment,
    this.highlightWords = const {},
    this.highlightColor = Colors.yellow,
    this.highlightFontWeight = FontWeight.bold,
    this.fontStyle,
  });

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final TextAlign? alignment;
  final Set<String> highlightWords;
  final Color highlightColor;
  final FontWeight highlightFontWeight;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textSpans = [];
    text.split(' ').forEach((word) {
      bool isHighlighted = highlightWords.contains(word);
      textSpans.add(
        TextSpan(
          text: "$word ",
          style: TextStyle(
            color: isHighlighted ? highlightColor : color ?? Colors.black,
            fontSize: size ?? 14.0,
            fontWeight: isHighlighted
                ? highlightFontWeight
                : fontWeight ?? FontWeight.normal,
            fontStyle: fontStyle,
          ),
        ),
      );
    });

    return RichText(
      textAlign: alignment ?? TextAlign.start,
      text: TextSpan(
        children: textSpans,
        style: TextStyle(
          color: color ?? Colors.black,
          fontSize: size ?? 14.0,
          fontStyle: fontStyle,
        ),
      ),
      softWrap: true,
    );
  }
}
