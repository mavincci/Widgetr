import 'package:flutter/material.dart';

class ColorPallet {
  final Color primary;
  final Color secondary;
  final Color background;
  final Color textPrimary;
  final Color error;

  ColorPallet({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.textPrimary,
    required this.error,
  });

  factory ColorPallet.light() {
    return ColorPallet(
      primary: const Color(0xFF4CAF50),
      secondary: const Color(0xFF4CAF50),
      background: const Color(0xFFFFFFFF),
      textPrimary: const Color(0xFF000000),
      error: const Color(0xFFB00020),
    );
  }
}
