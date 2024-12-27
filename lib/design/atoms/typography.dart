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
        color: colorPallet.onBackground,
      ),
      subheading: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: colorPallet.onBackground,
      ),
      body: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: colorPallet.onBackground,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: colorPallet.onBackground.withOpacity(0.6),
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: colorPallet.primary,
      ),
    );
  }
}
