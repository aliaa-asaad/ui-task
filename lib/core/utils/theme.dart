import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff16141F),
    iconTheme: const IconThemeData(color: Colors.white),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xff16141F),
      secondary: Colors.green,
    ),
  );
}
