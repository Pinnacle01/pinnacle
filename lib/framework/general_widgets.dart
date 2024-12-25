import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key, required this.text, this.color, this.size, this.type});

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? type;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: type,
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget(
      {super.key, required this.icon, required this.size, this.color});

  final IconData icon;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}

class IconWithTextWidget extends StatelessWidget {
  const IconWithTextWidget(
      {super.key, required this.icon, required this.value});

  final IconData icon;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: Sizes.size18.sp,
        ),
        const SizedBox(
          width: 10,
        ),
        TextWidget(
          text: value.toString(),
          size: Sizes.size18.sp,
          color: Colors.white,
        )
      ],
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.size,
    this.color,
    required this.pressedFunction,
  });

  final void Function() pressedFunction;
  final IconData icon;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: pressedFunction,
      icon: Icon(icon, size: size),
      color: color,
    );
  }
}
