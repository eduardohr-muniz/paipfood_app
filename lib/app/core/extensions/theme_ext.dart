import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_color.dart';

part '../extensions/input_decoration_part.dart';

class ThemeExt {
  ThemeExt._();
  ExtColor extColor = ExtColor();

  static final lightTheme = ThemeData(
    fontFamily: "Roboto",
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: ExtColor.primaryTextLight),
    ),
    scaffoldBackgroundColor: ExtColor.primaryBackgroundLight,
    textTheme: extTextTheme,
    brightness: Brightness.light,
    primaryColor: ExtColor.primaryColor,
    primaryColorLight: ExtColor.primaryColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: ExtColor.primaryColor,
      onPrimary: Colors.white,
      secondary: Colors.black,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    inputDecorationTheme: inputDecorationPart,
  );

  static final darkTheme = ThemeData(
    fontFamily: "Roboto",
    appBarTheme: const AppBarTheme(iconTheme: IconThemeData(color: ExtColor.primaryTextDark)),
    scaffoldBackgroundColor: ExtColor.primaryBackgroundDark,
    textTheme: extTextTheme,
    brightness: Brightness.dark,
    primaryColor: ExtColor.primaryColor,
    primaryColorLight: ExtColor.primaryColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ExtColor.primaryColor,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Colors.black,
      error: ExtColor.tertiaryDark,
      onError: Colors.white,
      background: ExtColor.primaryBackgroundDark,
      onBackground: Colors.white,
      surface: Colors.grey,
      onSurface: Colors.white,
    ),
    inputDecorationTheme: inputDecorationPart,
  );

  static const extTextTheme = TextTheme(
    bodySmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
    ),
    bodyLarge: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
    // displaySmall: TextStyle(),
    // displayLarge: TextStyle(),
    // displayMedium: TextStyle(),
    // headlineSmall: TextStyle(),
    // headlineMedium: TextStyle(),
    // headlineLarge: TextStyle(),
    labelSmall: TextStyle(
      fontSize: 16,
      letterSpacing: 0.5,
    ),
    labelMedium: TextStyle(
      fontSize: 18,
      letterSpacing: 0.5,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      letterSpacing: 0.5,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      letterSpacing: 0.5,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      fontSize: 30,
      letterSpacing: 0,
    ),
  );
}
