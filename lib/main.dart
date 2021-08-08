import 'package:flutter/material.dart';

import 'core/theme.dart';
import 'splash/presentation/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: createMaterialColor(kPrimaryColor),
        accentColor: createMaterialColor(kPrimaryAccent),
        textTheme: TextTheme(
          headline1: kHeading1,
          headline2: kHeading2,
          headline3: kHeading3,
          headline4: kHeading4,
          headline5: kHeading5,
          headline6: kHeading6,
          // bodyText1: kParagraph1,
          // bodyText2: kParagraph2,
          // button: kParagraph1,
          // caption: kParagraph3,
          // overline: kParagraph3,
          // subtitle1: kParagraph1,
          // subtitle2: kParagraph2,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(kButtonText),
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              const Set<MaterialState> interactiveStates = <MaterialState>{
                MaterialState.disabled,
              };
              if (states.any(interactiveStates.contains)) {
                return createMaterialColor(kSecondaryColor).shade200;
              }
              return kSecondaryColor;
            }),
            foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              const Set<MaterialState> interactiveStates = <MaterialState>{
                MaterialState.disabled,
              };
              if (states.any(interactiveStates.contains)) {
                return kBorders100;
              }
              return kTypographyWhite;
            }),
            overlayColor: MaterialStateProperty.all<Color>(
              createMaterialColor(kSecondaryColor).shade600,
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 16.0),
            ),
          ),
        ),
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'kcal',
          style: kHeading3.copyWith(
            color: kTypographyWhite,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            Divider(height: 32.0),
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
            Divider(height: 32.0),
            TextButton(
              onPressed: () {},
              child: Text('Button'),
            )
          ],
        ),
      ),
    );
  }
}
