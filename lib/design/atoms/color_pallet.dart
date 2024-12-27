import 'package:flutter/material.dart';

class ColorPallet {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color background;
  final Color error;
  final Color onPrimary;
  final Color onSecondary;
  final Color onTertiary;
  final Color onBackground;
  final Color onError;

  const ColorPallet({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.background,
    required this.error,
    required this.onPrimary,
    required this.onSecondary,
    required this.onTertiary,
    required this.onBackground,
    required this.onError,
  });

  factory ColorPallet.light() {
    return const ColorPallet(
      primary: Colors.blue,
      secondary: Colors.green,
      tertiary: Colors.orange,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onTertiary: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
    );
  }

  factory ColorPallet.dark() {
    return const ColorPallet(
      primary: Colors.blueGrey,
      secondary: Colors.teal,
      tertiary: Colors.deepPurple,
      background: Colors.black,
      error: Colors.redAccent,
      onPrimary: Colors.black,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onBackground: Colors.white,
      onError: Colors.black,
    );
  }
}
