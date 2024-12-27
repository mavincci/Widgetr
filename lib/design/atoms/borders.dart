import 'package:flutter/material.dart';
import 'package:widgetr/design/atoms/color_pallet.dart';

class Borders {
  final BorderRadius smallRadius;
  final BorderRadius mediumRadius;
  final BorderRadius largeRadius;

  final double thinWidth;
  final double mediumWidth;
  final double thickWidth;

  final Color borderColor;

  const Borders({
    required this.smallRadius,
    required this.mediumRadius,
    required this.largeRadius,
    required this.thinWidth,
    required this.mediumWidth,
    required this.thickWidth,
    required this.borderColor,
  });

  factory Borders.light(ColorPallet colorPallet) {
    return Borders(
      smallRadius: BorderRadius.circular(4),
      mediumRadius: BorderRadius.circular(8),
      largeRadius: BorderRadius.circular(16),
      thinWidth: 1.0,
      mediumWidth: 2.0,
      thickWidth: 4.0,
      borderColor: colorPallet.primary,
    );
  }

  factory Borders.dark(ColorPallet colorPallet) {
    return Borders(
      smallRadius: BorderRadius.circular(4),
      mediumRadius: BorderRadius.circular(8),
      largeRadius: BorderRadius.circular(16),
      thinWidth: 1.0,
      mediumWidth: 2.0,
      thickWidth: 4.0,
      borderColor: colorPallet.secondary,
    );
  }
}
