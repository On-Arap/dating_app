import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF2B2E4A),
      onPrimary: Color(0xFF2B2E4A),
      secondary: Color(0xFFE84545),
      onSecondary: Color(0xFF2B2E4A),
      error: Color(0xFFE84545),
      onError: Color(0xFF2B2E4A),
      background: Color(0xFFF4F4F4),
      onBackground: Color(0xFF2B2E4A),
      surface: Color(0xFFE4E4E4),
      onSurface: Color(0xFF2B2E4A),
    ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Optima',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headlineMedium: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headlineSmall: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    ),
  );
}
