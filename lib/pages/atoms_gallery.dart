import 'package:flutter/material.dart';
import 'package:widgetr/design/atoms/color_pallet.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "heading",
          style: typography.heading,
        ),
        const SizedBox(height: 10),
        Text(
          "subheading",
          style: typography.subheading,
        ),
        const SizedBox(height: 10),
        Text(
          "body",
          style: typography.body,
        ),
        const SizedBox(height: 10),
        Text(
          "caption",
          style: typography.caption,
        ),
        const SizedBox(height: 10),
        Text(
          "button",
          style: typography.button,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final examplePallet = ColorPallet.light();
    final exampleTypography = t.Typography.defaultTypography(examplePallet);
    ;
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
            ],
          ),
        ),
      ),
    );
  }
}
