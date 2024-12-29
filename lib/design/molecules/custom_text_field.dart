import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool isPassword;
  final TextEditingController? controller;
  final Color backgroundColor;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color textColor;
  final Color hintColor;
  final double borderWidth;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.label,
    this.hintText,
    this.errorText,
    this.isPassword = false,
    this.controller,
    required this.backgroundColor,
    required this.borderColor,
    required this.focusedBorderColor,
    required this.errorBorderColor,
    required this.textColor,
    required this.hintColor,
    this.borderWidth = 1.0,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.all(12.0),
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        if (label != null) const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor),
            filled: true,
            fillColor: backgroundColor,
            contentPadding: padding,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor, width: borderWidth),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
              BorderSide(color: focusedBorderColor, width: borderWidth),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: errorBorderColor, width: borderWidth),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor, width: borderWidth),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            errorText: errorText,
          ),
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
