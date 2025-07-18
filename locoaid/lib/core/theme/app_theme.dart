import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF2B60A1); // from image
  static const Color secondaryColor = Color(0xFF98C6F2); // from image
  static const Color backgroundLight = Color(0xFFF5F9FF);
  static const Color backgroundDark = Color(0xFF1C1C1E);
  static const Color textColorLight = Colors.black;
  static const Color textColorDark = Colors.white;

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      background: backgroundLight,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onBackground: Colors.black,
      onSurface: Colors.black,
    ),
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,

      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppTheme.textColorLight),
      bodyMedium: TextStyle(color: AppTheme.textColorLight),
      headlineMedium: TextStyle(
        color: AppTheme.textColorLight,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      background: backgroundDark,
      surface: const Color(0xFF2C2C2E),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.white,
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: backgroundDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[900],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppTheme.textColorDark),
      bodyMedium: TextStyle(color: AppTheme.textColorDark),
      headlineMedium: TextStyle(
        color: AppTheme.textColorDark,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
