import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Icon? icon;
  final double? iconSize;
  final EdgeInsetsGeometry padding;
  final bool isIconLeft;
  final BorderRadius borderRadius;
  final double borderWidth;
  final Color? borderColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.text,
    this.icon,
    this.iconSize,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.isIconLeft = false,
    this.borderColor,
    this.borderWidth = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
          side: borderWidth > 0
              ? BorderSide(
                  color: borderColor ?? Colors.transparent,
                  width: borderWidth,
                )
              : BorderSide.none,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null && !isIconLeft)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                icon!.icon,
                color: textColor,
                size: iconSize,
              ),
            ),
          if (text != null)
            Text(
              text!,
              style: TextStyle(color: textColor),
            ),
          if (icon != null && isIconLeft)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                icon!.icon,
                color: textColor,
                size: iconSize,
              ),
            ),
        ],
      ),
    );
  }
}
