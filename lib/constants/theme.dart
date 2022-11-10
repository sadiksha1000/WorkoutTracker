import 'package:flutter/material.dart';
import 'package:workout_tracker/constants/color.dart';

ThemeData lightTheme(BuildContext context) {
  const double elevation = 1.0;
  const double padding = 16.0;
  const double radius = 8.0;
  const int splashTime = 4;
  return ThemeData(
    primaryColor: primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: primaryColor,
    ),
    textTheme: const TextTheme(
      caption: TextStyle(height: 1.5),
      button: TextStyle(height: 1.5),
      bodyText1: TextStyle(height: 1.5),
      subtitle1: TextStyle(fontSize: 10, height: 1.5),
      subtitle2: TextStyle(fontSize: 12, height: 1.5),
      headline6: TextStyle(fontSize: 14, height: 1.5),
      headline5: TextStyle(fontSize: 16, height: 1.5),
      headline4: TextStyle(fontSize: 18, height: 1.5),
      headline3: TextStyle(fontSize: 20, height: 1.5),
      headline2: TextStyle(fontSize: 22, height: 1.5),
      headline1: TextStyle(fontSize: 24, height: 1.5),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    ),
  );
}
