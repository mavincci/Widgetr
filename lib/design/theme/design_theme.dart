import 'package:widgetr/design/atoms/borders.dart';
import 'package:widgetr/design/atoms/color_pallet.dart';
import 'package:widgetr/design/atoms/icon_sizes.dart';
import 'package:widgetr/design/atoms/shadows.dart';
import 'package:widgetr/design/atoms/spacing.dart';
import 'package:widgetr/design/atoms/typography.dart';

class DesignTheme {
  final ColorPallet colorPallet;
  final Typography typography;
  final Spacing spacing;
  final Shadows shadows;
  final Borders borders;
  final IconSizes iconSizes;

  DesignTheme({
    required this.colorPallet,
    required this.typography,
    required this.spacing,
    required this.shadows,
    required this.borders,
    required this.iconSizes,
  });

  factory DesignTheme.light() {
    final colorPallet = ColorPallet.light();
    return DesignTheme(
      colorPallet: colorPallet,
      typography: Typography.defaultTypography(colorPallet),
      spacing: Spacing.light(),
      shadows: Shadows.light(),
      borders: Borders.light(colorPallet),
      iconSizes: IconSizes.example(),
    );
  }

  factory DesignTheme.dark() {
    final colorPallet = ColorPallet.dark();
    return DesignTheme(
      colorPallet: colorPallet,
      typography: Typography.defaultTypography(colorPallet),
      spacing: Spacing.dark(),
      shadows: Shadows.dark(),
      borders: Borders.dark(colorPallet),
      iconSizes: IconSizes.example(),
    );
  }
}
