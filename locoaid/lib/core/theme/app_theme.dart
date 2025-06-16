import 'package:flutter/material.dart';

class AppTheme {
  static Color get primary => const Color(0xFFA383ED);
  static Color get secondary => const Color(0xFFF4F0FF);
  static Color get background => Colors.white;
  static Color get accent => const Color(0xFFE3DAF9);
  static Color get darkText => const Color(0xFF1E1E1E);
  static Color get lightText => Colors.white;
  static Color get disabled => const Color(0xFFC5BEE3);

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: background,
      fontFamily: 'Roboto',
      colorScheme: ColorScheme.light(
        primary: primary,
        secondary: secondary,
        background: background,
        surface: Colors.white,
        onPrimary: lightText,
        onSecondary: darkText,
        onBackground: darkText,
        onSurface: darkText,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: darkText),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: darkText),
        bodyLarge: TextStyle(fontSize: 16, color: darkText),
        bodyMedium: TextStyle(fontSize: 14, color: darkText),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: darkText),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: lightText,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: secondary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        labelStyle: TextStyle(color: darkText),
        hintStyle: TextStyle(color: disabled),
      ),
    );
  }
}
