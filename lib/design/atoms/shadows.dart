import 'package:flutter/material.dart';

class Shadows {
  final BoxShadow low;
  final BoxShadow medium;
  final BoxShadow high;

  const Shadows({
    required this.low,
    required this.medium,
    required this.high,
  });

  // Light theme shadows
  factory Shadows.light() {
    return Shadows(
      low: BoxShadow(
        color: Colors.black.withOpacity(0.05),
        offset: const Offset(0, 1),
        blurRadius: 2,
      ),
      medium: BoxShadow(
        color: Colors.black.withOpacity(0.1),
        offset: const Offset(0, 4),
        blurRadius: 6,
      ),
      high: BoxShadow(
        color: Colors.black.withOpacity(0.2),
        offset: const Offset(0, 8),
        blurRadius: 12,
      ),
    );
  }

  // Dark theme shadows
  factory Shadows.dark() {
    return Shadows(
      low: BoxShadow(
        color: Colors.white.withOpacity(0.05),
        offset: const Offset(0, 1),
        blurRadius: 2,
      ),
      medium: BoxShadow(
        color: Colors.white.withOpacity(0.1),
        offset: const Offset(0, 4),
        blurRadius: 6,
      ),
      high: BoxShadow(
        color: Colors.white.withOpacity(0.2),
        offset: const Offset(0, 8),
        blurRadius: 12,
      ),
    );
  }
}
