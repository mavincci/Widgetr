import 'package:flutter/material.dart';
import 'package:widgetr/design/atoms/borders.dart';
import 'package:widgetr/design/atoms/color_pallet.dart';
import 'package:widgetr/design/atoms/icon_sizes.dart';
import 'package:widgetr/design/atoms/shadows.dart';
import "package:widgetr/design/atoms/typography.dart" as t;

class AtomsGallery extends StatelessWidget {
  const AtomsGallery({super.key});

  Widget buildColorPallet(ColorPallet pallet) {
    buildKV(String key, Color value) {
      return Row(
        children: [
          Container(height: 50, width: 50, color: value),
          const SizedBox(width: 10),
          Text(key),
        ],
      );
    }

    return Column(
      children: [
        buildKV(
          "primary",
          pallet.primary,
        ),
        const SizedBox(height: 10),
        buildKV(
          "secondary",
          pallet.secondary,
        ),
        const SizedBox(height: 10),
        buildKV(
          "backgroundColor",
          pallet.background,
        ),
        const SizedBox(height: 10),
        buildKV(
          "textPrimaryColor",
          pallet.textPrimary,
        ),
        const SizedBox(height: 10),
        buildKV(
          "errorColor",
          pallet.error,
        ),
      ],
    );
  }

  Widget buildTypography(t.Typography typography) {
    buildTypoInfo(String key, TextStyle value) {
      return Row(
        children: [
          Text(
            "$key --- ${value.fontSize} -- ${value.fontWeight!.value} -- ${value.fontFamily} -- [${value.fontFamilyFallback?.join(", ") ?? ""}]",
            style: value,
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTypoInfo(
          "heading",
          typography.heading,
        ),
        const SizedBox(height: 10),
        buildTypoInfo(
          "subheading",
          typography.subheading,
        ),
        const SizedBox(height: 10),
        buildTypoInfo(
          "body",
          typography.body,
        ),
        const SizedBox(height: 10),
        buildTypoInfo(
          "caption",
          typography.caption,
        ),
        const SizedBox(height: 10),
        buildTypoInfo(
          "button",
          typography.button,
        ),
      ],
    );
  }

  Widget buildShadows(Shadows shadows) {
    buildShadowBox(String label, BoxShadow shadow) {
      return Column(
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [shadow],
            ),
          ),
          const SizedBox(height: 5),
          Text(label),
        ],
      );
    }

    return Column(
      children: [
        buildShadowBox("Low", shadows.low),
        const SizedBox(height: 20),
        buildShadowBox("Medium", shadows.medium),
        const SizedBox(height: 20),
        buildShadowBox("High", shadows.high),
      ],
    );
  }

  Widget buildBorders(Borders borders) {
    buildBorderBox(
        String label, BorderRadius radius, double width, Color color) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: color,
                width: width,
              ),
              borderRadius: radius,
            ),
          ),
          const SizedBox(height: 5),
          Text(label),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildBorderBox("Small Radius + Thin", borders.smallRadius,
            borders.thinWidth, borders.borderColor),
        const SizedBox(height: 20),
        buildBorderBox("Medium Radius + Medium", borders.mediumRadius,
            borders.mediumWidth, borders.borderColor),
        const SizedBox(height: 20),
        buildBorderBox("Large Radius + Thick", borders.largeRadius,
            borders.thickWidth, borders.borderColor),
      ],
    );
  }

  Widget buildIcons(IconSizes iconSizes) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row for small icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, size: iconSizes.smallSize),
            Icon(Icons.search, size: iconSizes.smallSize),
            Icon(Icons.settings, size: iconSizes.smallSize),
          ],
        ),
        const SizedBox(height: 20),

        // Row for medium icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, size: iconSizes.mediumSize),
            Icon(Icons.search, size: iconSizes.mediumSize),
            Icon(Icons.settings, size: iconSizes.mediumSize),
          ],
        ),
        const SizedBox(height: 20),

        // Row for large icons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, size: iconSizes.largeSize),
            Icon(Icons.search, size: iconSizes.largeSize),
            Icon(Icons.settings, size: iconSizes.largeSize),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final examplePallet = ColorPallet.light();
    final exampleTypography = t.Typography.defaultTypography(examplePallet);
    final exampleShadows = Shadows.light();
    final exampleBorders = Borders.light(examplePallet);
    final exampleIconSizes = IconSizes.example();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Atoms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Colors'),
              SizedBox(height: 20),
              buildColorPallet(examplePallet),
              SizedBox(height: 40),
              Text('Typography'),
              SizedBox(height: 20),
              buildTypography(exampleTypography),
              SizedBox(height: 40),
              Text('Shadows'),
              SizedBox(height: 20),
              buildShadows(exampleShadows),
              SizedBox(height: 40),
              Text('Borders'),
              SizedBox(height: 20),
              buildBorders(exampleBorders),
              SizedBox(height: 40),
              Text('Icon sizes'),
              SizedBox(height: 20),
              buildIcons(exampleIconSizes),
              SizedBox(height: 400),
            ],
          ),
        ),
      ),
    );
  }
}
