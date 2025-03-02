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

    String remainingText = text;

    while (remainingText.isNotEmpty) {
      // Find the first highlighted phrase in the text
      String? firstMatch;
      int matchStart = remainingText.length; // Set to max initially

      for (String word in highlightWords) {
        int index = remainingText.indexOf(word);
        if (index != -1 && index < matchStart) {
          firstMatch = word;
          matchStart = index;
        }
      }

      if (firstMatch == null) {
        // No match found, add remaining text as normal
        textSpans.add(
          TextSpan(
            text: remainingText,
            style: TextStyle(
              color: color ?? Colors.black,
              fontSize: size ?? 14.0,
              fontWeight: fontWeight ?? FontWeight.normal,
              fontStyle: fontStyle,
            ),
          ),
        );
        break;
      }

      // Add the normal text before the match
      if (matchStart > 0) {
        textSpans.add(
          TextSpan(
            text: remainingText.substring(0, matchStart),
            style: TextStyle(
              color: color ?? Colors.black,
              fontSize: size ?? 14.0,
              fontWeight: fontWeight ?? FontWeight.normal,
              fontStyle: fontStyle,
            ),
          ),
        );
      }

      // Add the highlighted text
      textSpans.add(
        TextSpan(
          text: firstMatch,
          style: TextStyle(
            color: highlightColor,
            fontSize: size ?? 14.0,
            fontWeight: highlightFontWeight,
            fontStyle: fontStyle,
          ),
        ),
      );

      remainingText = remainingText.substring(matchStart + firstMatch.length);
    }

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
      overflow: TextOverflow.visible,
    );
  }
}
