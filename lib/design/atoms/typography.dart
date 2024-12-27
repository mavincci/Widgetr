import 'package:flutter/material.dart';

import 'color_pallet.dart';

class Typography {
  final TextStyle heading;
  final TextStyle subheading;
  final TextStyle body;
  final TextStyle caption;
  final TextStyle button;

  Typography({
    required this.heading,
    required this.subheading,
    required this.body,
    required this.caption,
    required this.button,
  });

  factory Typography.defaultTypography(ColorPallet colorPallet) {
    return Typography(
      heading: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: colorPallet.textPrimary,
      ),
      subheading: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: colorPallet.textPrimary,
      ),
      body: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: colorPallet.textPrimary,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: colorPallet.textPrimary.withOpacity(0.6),
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: colorPallet.primary,
      ),
    );
  }
}
