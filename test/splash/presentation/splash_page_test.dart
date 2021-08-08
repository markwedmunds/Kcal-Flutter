import 'package:flutter/material.dart';
import 'package:flutter_kcal/splash/presentation/splash_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(SplashPage());

    final splashImageFinder = find.byType(Image);

    expect(splashImageFinder, findsOneWidget);

    final splashImage = splashImageFinder.evaluate().single.widget as Image;

    expect(splashImage.image, isA<AssetImage>());

    expect(splashImage.image.toString(), contains('assets/splash.png'));
  });
}
