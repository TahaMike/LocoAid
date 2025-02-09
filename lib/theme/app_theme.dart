import 'package:flutter/material.dart';

class AppTheme {
  // Define your color palette
  static const Color primaryColor = Color(0xFF00796B); // Teal Green
  static const Color secondaryColor = Color(0xFF000000); // Black
  static const Color backgroundColor = Color(0xFFF5F5F5); // Light Grey
  static const Color accentColor = Color(0xFF00BFA5); // Light Teal Green
  static const Color errorColor = Color(0xFFD32F2F); // Dark Red

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Enable Material 3 design
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: backgroundColor, // Use surface instead of background
      error: errorColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white, // Ensures text is visible
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true, // Enable Material 3 design
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Colors.black, // Use surface instead of background
      error: errorColor,
    ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white, // Ensures text is visible
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.white54),
    ),
  );
}
