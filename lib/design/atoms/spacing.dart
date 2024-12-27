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

  factory Spacing.light() {
    return const Spacing(
      small: 8.0,
      medium: 16.0,
      large: 24.0,
      extraLarge: 32.0,
    );
  }

  factory Spacing.dark() {
    return const Spacing(
      small: 6.0,
      medium: 14.0,
      large: 22.0,
      extraLarge: 30.0,
    );
  }
}
