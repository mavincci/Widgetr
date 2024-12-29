import 'package:flutter/material.dart';
import 'package:widgetr/design/molecules/custom_button.dart';
import 'package:widgetr/design/molecules/custom_text_field.dart';
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

      buildIconButton(Icon? icon) {
        return CustomButton(
          onPressed: () => print("Icon Button pressed"),
          backgroundColor: Colors.white,
          textColor: theme.colorPallet.secondary,
          icon: icon,
          iconSize: theme.iconSizes.largeSize,
          borderColor: theme.colorPallet.secondary,
          borderWidth: theme.borders.mediumWidth,
          borderRadius: theme.borders.mediumRadius,
          padding: const EdgeInsets.all(24),
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
          const SizedBox(height: 10),
          buildIconButton(Icon(Icons.settings)),
        ],
      );
    }

    Widget buildTextFields() {
      final TextEditingController usernameController = TextEditingController();
      final TextEditingController passwordController = TextEditingController();

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Normal text field with a label
          CustomTextField(
            label: "Username",
            hintText: "Enter your username",
            backgroundColor: Colors.white,
            borderColor: Colors.grey,
            focusedBorderColor: Colors.blue,
            errorBorderColor: Colors.red,
            textColor: Colors.black,
            hintColor: Colors.grey.shade400,
            borderRadius: 12.0,
            borderWidth: 2.0,
            prefixIcon: const Icon(Icons.person),
            controller: usernameController,
          ),
          const SizedBox(height: 16),

          // Password text field with a suffix icon
          CustomTextField(
            label: "Password",
            hintText: "Enter your password",
            isPassword: true,
            backgroundColor: Colors.white,
            borderColor: Colors.grey,
            focusedBorderColor: Colors.blue,
            errorBorderColor: Colors.red,
            textColor: Colors.black,
            hintColor: Colors.grey.shade400,
            borderRadius: 12.0,
            borderWidth: 2.0,
            suffixIcon: const Icon(Icons.visibility),
            controller: passwordController,
          ),
          const SizedBox(height: 16),

          // Text field with error state
          CustomTextField(
            label: "Email",
            hintText: "Enter your email",
            errorText: "Invalid email address",
            backgroundColor: Colors.white,
            borderColor: Colors.grey,
            focusedBorderColor: Colors.blue,
            errorBorderColor: Colors.red,
            textColor: Colors.black,
            hintColor: Colors.grey.shade400,
            borderRadius: 12.0,
            borderWidth: 2.0,
            prefixIcon: const Icon(Icons.email),
          ),
          const SizedBox(height: 16),

          // Text field without a label
          CustomTextField(
            hintText: "Search...",
            backgroundColor: Colors.grey.shade100,
            borderColor: Colors.grey,
            focusedBorderColor: Colors.blue,
            errorBorderColor: Colors.red,
            textColor: Colors.black,
            hintColor: Colors.grey.shade500,
            borderRadius: 16.0,
            borderWidth: 1.5,
            prefixIcon: const Icon(Icons.search),
          ),
          const SizedBox(height: 16),

          // Multiline text field
          CustomTextField(
            label: "Comments",
            hintText: "Write your comments here",
            backgroundColor: Colors.white,
            borderColor: Colors.grey,
            focusedBorderColor: Colors.blue,
            errorBorderColor: Colors.red,
            textColor: Colors.black,
            hintColor: Colors.grey.shade400,
            borderRadius: 8.0,
            borderWidth: 1.5,
            minLines: 1,
            maxLines: 5,
            padding: const EdgeInsets.all(16.0),
            controller: TextEditingController(),
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
              const SizedBox(height: 40),
              const Text('Text fields'),
              const SizedBox(height: 20),
              buildTextFields(),
              const SizedBox(height: 400),
            ],
          ),
        ),
      ),
    );
  }
}
