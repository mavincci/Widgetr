import 'package:flutter/material.dart';

class ColorPallet {
  final Color primary;
  final Color secondary;
  final Color background;
  final Color textPrimary;
  final Color error;

  const ColorPallet({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.textPrimary,
    required this.error,
  });

  factory ColorPallet.light() {
    return const ColorPallet(
      primary: Color(0xFF1976D2),
      secondary: Color(0xFF388E3C),
      background: Color(0xFFFFFFFF),
      textPrimary: Color(0xFF000000),
      error: Color(0xFFD32F2F),
    );
  }

  factory ColorPallet.dark() {
    return const ColorPallet(
      primary: Color(0xFFBB86FC),
      secondary: Color(0xFF03DAC6),
      background: Color(0xFF121212),
      textPrimary: Color(0xFFFFFFFF),
      error: Color(0xFFCF6679),
    );
  }
}
