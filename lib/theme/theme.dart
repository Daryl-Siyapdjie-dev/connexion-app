import 'package:flutter/material.dart';


final ThemeData appTheme = ThemeData(
  primaryColor: darkColorScheme.primary,
  colorScheme: darkColorScheme,
  hintColor: Colors.orange,
  buttonTheme: ButtonThemeData(
    buttonColor: darkColorScheme.primary, // background color of the button
    textTheme: ButtonTextTheme.primary, // color of the text
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 35.0,  fontWeight: FontWeight.w600,
    color: Color(0xFF4b4b4b)),
    bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: darkColorScheme.secondary,
      backgroundColor: darkColorScheme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      shadowColor: Colors.black.withOpacity(0.85),
      elevation: 8,
    ),
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    shadowColor: Colors.black,
    elevation: 5,
  ),
  iconTheme: IconThemeData(
    color: darkColorScheme.primary,
    size: 24,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: darkColorScheme.onPrimary),
  ),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFD27D),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF2D2C2C),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  background: Color(0xFFFCFDF6),
  onBackground: Color(0xFF1A1C18),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
  surface: Color(0xFFF9FAF3),
  onSurface: Color(0xFF1A1C18),
);
