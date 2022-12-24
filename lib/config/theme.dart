import 'package:flutter/material.dart';
import 'values.dart';

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
        fontSize: Values.mediumFontSize);
  }

  static TextStyle hhMM(bool isDarkMode) {
    return TextStyle(
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
        fontSize: Values.largeFontSize,
        color: isDarkMode ? Colors.white70 : Colors.black);
  }

  static TextStyle ss(bool isDarkMode) {
    return TextStyle(
        fontSize: Values.smallFontSize,
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

  static Image wallpaper() {
    return Image.asset('images/wallpaper.JPEG');
  }

  static TextStyle appCardTitle() {
    return TextStyle(
        fontSize: Values.mediumFontSize,
        fontWeight: FontWeight.w400,
        color: Colors.black54);
  }
}
