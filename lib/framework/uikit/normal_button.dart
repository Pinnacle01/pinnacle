import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

enum ButtonType {
  normal,
  outlined,
  text,
  buttonWithIcon,
  backIconButton,
}

class NormalButton extends StatelessWidget {
  const NormalButton({
    super.key,
    required this.label,
    required this.onPress,
    this.onLongPress,
    this.icon,
    this.bgColor,
    this.iconColor,
    required this.buttonType,
  });

  final void Function() onPress;
  final Widget? icon;
  final Widget label;
  final Color? bgColor;
  final Color? iconColor;
  final ButtonType buttonType;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.normal:
        return _buildNormalButton();
      case ButtonType.outlined:
        return _buildOutlinedButton();
      case ButtonType.text:
        return _buildTextButton();
      case ButtonType.buttonWithIcon:
        return _buildButtonWithIcon();
      case ButtonType.backIconButton:
        return _buildBackIcon();
    }
  }

  Widget _buildBackIcon() {
    return ElevatedButton.icon(
      label: label,
      onPressed: onPress,
      icon: icon,
      style: ElevatedButton.styleFrom(
        iconColor: iconColor ?? CustomColors.whiteColor,
        backgroundColor: bgColor ?? CustomColors.buttonBackgroundCreamColor,
      ),
      onLongPress: onLongPress,
    );
  }

  Widget _buildButtonWithIcon() {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? CustomColors.buttonBackgroundCreamColor,
      ),
      onLongPress: onLongPress,
      child: Center(
        child: Row(
          children: [
            label,
            Visibility(
              visible: icon != null,
              child: SizedBox(width: Sizes.size10.dp),
            ),
            Visibility(
              visible: icon != null,
              child: icon!,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOutlinedButton() {
    return OutlinedButton(
      onPressed: onPress,
      onLongPress: onLongPress,
      style: OutlinedButton.styleFrom(
        shadowColor: bgColor ?? CustomColors.buttonBackgroundCreamColor,
      ),
      child: label,
    );
  }

  Widget _buildNormalButton() {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        iconColor: iconColor ?? CustomColors.whiteColor,
        backgroundColor: bgColor ?? CustomColors.buttonBackgroundCreamColor,
      ),
      onLongPress: onLongPress,
      child: label,
    );
  }

  Widget _buildTextButton() {
    return TextButton(
      onPressed: onPress,
      onLongPress: onLongPress,
      child: label,
    );
  }
}
