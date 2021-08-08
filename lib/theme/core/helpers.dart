import 'package:flutter/material.dart';

/// Creates a [MaterialColor] swatch based on the provided [color]
MaterialColor createMaterialColor(Color color) {
  final strengths = <double>[.05];
  final swatch = <int, Color>{};
  final r = color.red, g = color.green, b = color.blue;

  for (var i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (final strength in strengths) {
    final ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}

/// Calculates the relative line height from [fontSize] and [lineHeight].
double calculateRelativeLineHeight(double fontSize, double lineHeight) {
  assert(fontSize > 0, 'fontSize must be above zero');
  assert(lineHeight > 0, 'lineHeight must be above zero');
  return (1 / fontSize) * lineHeight;
}
