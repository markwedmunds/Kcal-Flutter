import 'package:flutter/material.dart';

/// SplashPage
class SplashPage extends StatelessWidget {
  /// Initializes [key] for subclasses.
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/splash.png',
      fit: BoxFit.cover,
    );
  }
}
