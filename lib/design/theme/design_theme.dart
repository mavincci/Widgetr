import 'package:widgetr/design/atoms/color_pallet.dart';
import 'package:widgetr/design/atoms/shadows.dart';
import 'package:widgetr/design/atoms/spacing.dart';
import 'package:widgetr/design/atoms/typography.dart';

class DesignTheme {
  final ColorPallet colorPallet;
  final Typography typography;
  final Spacing spacing;
  final Shadows shadows;

  DesignTheme({
    required this.colorPallet,
    required this.typography,
    required this.spacing,
    required this.shadows,
  });

  factory DesignTheme.light() {
    final colorPallet = ColorPallet.light();
    return DesignTheme(
      colorPallet: colorPallet,
      typography: Typography.defaultTypography(colorPallet),
      spacing: Spacing.light(),
      shadows: Shadows.light(),
    );
  }

  factory DesignTheme.dark() {
    final colorPallet = ColorPallet.dark();
    return DesignTheme(
      colorPallet: colorPallet,
      typography: Typography.defaultTypography(colorPallet),
      spacing: Spacing.dark(),
      shadows: Shadows.dark(),
    );
  }
}
