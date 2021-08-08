import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

/// Calculates the relative line height from [fontSize] and [lineHeight].
double calculateRelativeLineHeight(double fontSize, double lineHeight) {
  return (1 / fontSize) * lineHeight;
}

final kPrimaryColor = Color(0xFF91C788);
final kSecondaryColor = Color(0xFFFF9385);
final kPrimaryAccent = Color(0xFFFFD885);
final kSecondaryAccent = Color(0xFF76BFFF);
final kTertiaryAccent = Color(0xFF9E9BC7);

final kTypographyTitle = Color(0xFF0E140E);
final kTypographySubtitle = Color(0xFF3E433E);
final kTypographyBody = Color(0xFF565B56);
final kTypographyCaption = Color(0xFF6E726E);
final kTypographyWhite = Color(0xFFFFFFFF);

final kBorders900 = Color(0xFF6E726E);
final kBorders700 = Color(0xFF878A87);
final kBorders500 = Color(0xFF9FA19F);
final kBorders300 = Color(0xFFCFD0CF);
final kBorders100 = Color(0xFFE7E8E7);
final kBorders50 = Color(0xFFF7F8F7);

final kSecondaryColorMaterial = createMaterialColor(kSecondaryColor);

final kHeading1 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 36.0,
  height: calculateRelativeLineHeight(36.0, 46.0),
  letterSpacing: -1.6,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

final kHeading2 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 24.0,
  height: calculateRelativeLineHeight(24.0, 34.0),
  letterSpacing: -0.8,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

final kHeading3 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 22.0,
  height: calculateRelativeLineHeight(22.0, 32.0),
  letterSpacing: -0.4,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

final kHeading4 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 18.0,
  height: calculateRelativeLineHeight(18.0, 28.0),
  letterSpacing: -0.4,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

final kHeading5 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 16.0,
  height: calculateRelativeLineHeight(16.0, 26.0),
  letterSpacing: -0.36,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

final kHeading6 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 14.0,
  height: calculateRelativeLineHeight(14.0, 24.0),
  letterSpacing: -0.3,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

final kParagraph1 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 18.0,
  height: calculateRelativeLineHeight(18.0, 28.0),
  letterSpacing: -0.2,
  fontWeight: FontWeight.w400,
  color: kSecondaryColorMaterial.shade900,
);

final kParagraph1SemiBold = kParagraph1.copyWith(
  fontWeight: FontWeight.w600,
);

final kParagraph2 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 16.0,
  height: calculateRelativeLineHeight(16.0, 26.0),
  letterSpacing: -0.1,
  fontWeight: FontWeight.w400,
  color: kSecondaryColorMaterial.shade900,
);

final kParagraph2SemiBold = kParagraph2.copyWith(
  fontWeight: FontWeight.w600,
);

final kParagraph3 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 14.0,
  height: calculateRelativeLineHeight(14.0, 24.0),
  fontWeight: FontWeight.w400,
  color: kSecondaryColorMaterial.shade900,
);

final kParagraph3SemiBold = kParagraph3.copyWith(
  fontWeight: FontWeight.w600,
);

final kButtonText = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 24.0,
  height: calculateRelativeLineHeight(24.0, 34.0),
  letterSpacing: 0.5,
  fontWeight: FontWeight.w600,
  color: kTypographyWhite,
);
