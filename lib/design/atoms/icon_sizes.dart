import 'package:flutter/material.dart';

class IconSizes {
  final double smallSize;
  final double mediumSize;
  final double largeSize;

  const IconSizes({
    required this.smallSize,
    required this.mediumSize,
    required this.largeSize,
  });

  // Default sizes for icons
  factory IconSizes.example() {
    return const IconSizes(
      smallSize: 16.0,
      mediumSize: 24.0,
      largeSize: 32.0,
    );
  }
}
