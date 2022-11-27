import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme();

  static ThemeData dark() {
    return ThemeData.dark();
  }

  static ThemeData light() {
    return ThemeData.light();
  }

  static TextStyle ddMMM(bool isDarkMode) {
    return TextStyle(
        letterSpacing: 3,
        fontWeight: FontWeight.bold,
        color: isDarkMode ? Colors.yellow.shade600 : Colors.black,
        fontSize: 20);
  }

  static TextStyle HHMM(bool isDarkMode) {
    return TextStyle(
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
        fontSize: 50,
        color: isDarkMode ? Colors.white70 : Colors.black);
  }

  static TextStyle ss(bool isDarkMode) {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: isDarkMode ? Colors.yellow.shade700 : Colors.black87);
  }

  static TextStyle amPM(bool isDarkMode) {
    return TextStyle(
        fontWeight: FontWeight.bold,
        color: isDarkMode ? Colors.white : Colors.black38);
  }

  static Border border(bool isDarkMode) {
    return Border.all(color: Colors.white);
  }
}
