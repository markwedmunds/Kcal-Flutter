import 'package:flutter/material.dart';
import 'package:kcal/splash/presentation/splash_page.dart';
import 'package:kcal/theme/core/theme.dart';

/// Main app widget
class KcalApp extends StatelessWidget {
  /// Initializes [key] for subclasses.
  const KcalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kcal',
      theme: kThemeData,
      home: const SplashPage(),
    );
  }
}
