class Spacing {
  final double small;
  final double medium;
  final double large;
  final double extraLarge;

  const Spacing({
    required this.small,
    required this.medium,
    required this.large,
    required this.extraLarge,
  });

  factory Spacing.defaultSpacing() {
    return const Spacing(
      small: 8.0,
      medium: 16.0,
      large: 24.0,
      extraLarge: 32.0,
    );
  }
}
