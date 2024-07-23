import 'package:flutter/material.dart';

final Color primaryColor = Color(0xFF58CC02);

final ThemeData appTheme = ThemeData(
  primaryColor: primaryColor,
  hintColor: Colors.orange,
  buttonTheme: ButtonThemeData(
    buttonColor: primaryColor, // background color of the button
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
      foregroundColor: Colors.white,
      backgroundColor: primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
      textStyle: const TextStyle(
        fontSize: 12,
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
    color: primaryColor,
    size: 24,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: primaryColor),
  ),
);
