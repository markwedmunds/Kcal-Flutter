import 'package:flutter/material.dart';

import 'package:kcal/theme/core/colors.dart';
import 'package:kcal/theme/core/helpers.dart';

/// Secondary Color as Material Color
final kSecondaryColorMaterial = createMaterialColor(kSecondaryColor);

/// Heading 1
final kHeading1 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 36,
  height: calculateRelativeLineHeight(36, 46),
  letterSpacing: -1.6,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

/// Heading 2
final kHeading2 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 24,
  height: calculateRelativeLineHeight(24, 34),
  letterSpacing: -0.8,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

/// Heading 3
final kHeading3 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 22,
  height: calculateRelativeLineHeight(22, 32),
  letterSpacing: -0.4,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

/// Heading 4
final kHeading4 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 18,
  height: calculateRelativeLineHeight(18, 28),
  letterSpacing: -0.4,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

/// Heading 5
final kHeading5 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 16,
  height: calculateRelativeLineHeight(16, 26),
  letterSpacing: -0.36,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

/// Heading 6
final kHeading6 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 14,
  height: calculateRelativeLineHeight(14, 24),
  letterSpacing: -0.3,
  fontWeight: FontWeight.w500,
  color: kSecondaryColorMaterial.shade900,
);

/// Paragraph 1
final kParagraph1 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 18,
  height: calculateRelativeLineHeight(18, 28),
  letterSpacing: -0.2,
  fontWeight: FontWeight.w400,
  color: kSecondaryColorMaterial.shade900,
);

/// Paragraph 1 Semi Bold
final kParagraph1SemiBold = kParagraph1.copyWith(
  fontWeight: FontWeight.w600,
);

/// Paragraph 2
final kParagraph2 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 16,
  height: calculateRelativeLineHeight(16, 26),
  letterSpacing: -0.1,
  fontWeight: FontWeight.w400,
  color: kSecondaryColorMaterial.shade900,
);

/// Paragraph 2 Semi Bold
final kParagraph2SemiBold = kParagraph2.copyWith(
  fontWeight: FontWeight.w600,
);

/// Paragraph 3
final kParagraph3 = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 14,
  height: calculateRelativeLineHeight(14, 24),
  fontWeight: FontWeight.w400,
  color: kSecondaryColorMaterial.shade900,
);

/// Paragraph 3 Semi Bold
final kParagraph3SemiBold = kParagraph3.copyWith(
  fontWeight: FontWeight.w600,
);

/// Button Text Style
final kButtonText = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 24,
  height: calculateRelativeLineHeight(24, 34),
  letterSpacing: 0.5,
  fontWeight: FontWeight.w600,
  color: kTypographyWhite,
);

/// Theme Data
final kThemeData = ThemeData(
  primarySwatch: createMaterialColor(kPrimaryColor),
  accentColor: createMaterialColor(kPrimaryAccent),
  textTheme: TextTheme(
    headline1: kHeading1,
    headline2: kHeading2,
    headline3: kHeading3,
    headline4: kHeading4,
    headline5: kHeading5,
    headline6: kHeading6,
    bodyText1: kParagraph1,
    bodyText2: kParagraph2,
    button: kButtonText,
    caption: kParagraph3,
    overline: kParagraph3,
    subtitle1: kParagraph1,
    subtitle2: kParagraph2,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(kButtonText),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return createMaterialColor(kSecondaryColor).shade200;
        }
        return kSecondaryColor;
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return kBorders100;
        }
        return kTypographyWhite;
      }),
      overlayColor: MaterialStateProperty.all<Color>(
        createMaterialColor(kSecondaryColor).shade600,
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.fromLTRB(16, 12, 16, 16),
      ),
    ),
  ),
);
