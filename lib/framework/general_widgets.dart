import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.type,
      this.alignment});

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? type;
  final TextAlign? alignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: type,
      ),
      textAlign: alignment,
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

class ImageButtonWidget extends StatelessWidget {
  const ImageButtonWidget({super.key, required this.imagePath, this.size});

  final String imagePath;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Image.asset(
        imagePath,
        scale: size,
      ),
    );
  }
}
