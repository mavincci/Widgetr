import 'package:flutter/material.dart';
import 'package:widgetr/design/molecules/custom_button.dart';
import 'package:widgetr/design/theme/design_theme.dart';

class MoleculesGallery extends StatelessWidget {
  const MoleculesGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final exampleTheme = DesignTheme.light();

    Widget buildButtons(DesignTheme theme) {
      buildPrimaryButton({Icon? icon, required String text, double? iconSize}) {
        return CustomButton(
          text: text,
          onPressed: () => print("$text pressed"),
          backgroundColor: theme.colorPallet.primary,
          textColor: theme.colorPallet.onPrimary,
          icon: icon,
          iconSize: iconSize ?? theme.iconSizes.largeSize,
        );
      }

      buildSecondaryButton(
          {Icon? icon, required String text, double? iconSize}) {
        return CustomButton(
          text: text,
          onPressed: () => print("$text pressed"),
          backgroundColor: Colors.white,
          textColor: theme.colorPallet.onSecondary,
          icon: icon,
          iconSize: iconSize ?? theme.iconSizes.largeSize,
          borderColor: theme.colorPallet.secondary,
          borderWidth: theme.borders.mediumWidth,
          borderRadius: theme.borders.mediumRadius,
        );
      }

      buildErrorButton({Icon? icon, required String text, double? iconSize}) {
        return CustomButton(
          text: text,
          onPressed: () => print("$text pressed"),
          backgroundColor: theme.colorPallet.error,
          textColor: theme.colorPallet.onError,
          icon: icon,
          iconSize: iconSize ?? theme.iconSizes.largeSize,
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildPrimaryButton(
            text: "Primary Button with Icon",
            icon: Icon(Icons.settings),
            iconSize: theme.iconSizes.largeSize,
          ),
          const SizedBox(height: 10),
          buildPrimaryButton(
            text: "Primary Button without Icon",
            iconSize: theme.iconSizes.mediumSize,
          ),
          const SizedBox(height: 10),
          buildPrimaryButton(
            text: "Primary Button with Smaller Icon",
            icon: Icon(Icons.star),
            iconSize: theme.iconSizes.smallSize,
          ),
          const SizedBox(height: 10),
          buildSecondaryButton(
            text: "Secondary Button with out Icon",
          ),
          const SizedBox(height: 10),
          buildErrorButton(
            text: "Error Button with out Icon",
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Molecules'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text('Buttons'),
              const SizedBox(height: 20),
              buildButtons(exampleTheme),
              const SizedBox(height: 40),
              const Text('Icon Sizes'),
              const SizedBox(height: 20),
              const SizedBox(height: 400),
            ],
          ),
        ),
      ),
    );
  }
}
