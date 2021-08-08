import 'package:flutter/material.dart';
import 'package:kcal/theme/core/colors.dart';
import 'package:kcal/theme/core/theme.dart';

/// An example widget to display all theme elements
class ThemePage extends StatelessWidget {
  /// Initializes [key] for subclasses.
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'kcal Theme',
          style: kHeading3.copyWith(
            color: kTypographyWhite,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Heading 1',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            Text(
              'Heading 2',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            Text(
              'Heading 3',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
            Text(
              'Heading 4',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Text(
              'Heading 5',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            Text(
              'Heading 6',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const Divider(height: 32),
            Text(
              'Paragraph 1',
              style: kParagraph1,
              textAlign: TextAlign.center,
            ),
            Text(
              'Paragraph 1 (Bold)',
              style: kParagraph1SemiBold,
              textAlign: TextAlign.center,
            ),
            Text(
              'Paragraph 2',
              style: kParagraph2,
              textAlign: TextAlign.center,
            ),
            Text(
              'Paragraph 2 (Bold)',
              style: kParagraph2SemiBold,
              textAlign: TextAlign.center,
            ),
            Text(
              'Paragraph 3',
              style: kParagraph3,
              textAlign: TextAlign.center,
            ),
            Text(
              'Paragraph 3 (Bold)',
              style: kParagraph3SemiBold,
              textAlign: TextAlign.center,
            ),
            const Divider(height: 32),
            TextButton(
              onPressed: () {},
              child: const Text('Button'),
            )
          ],
        ),
      ),
    );
  }
}
