import 'package:flutter/material.dart';

class AppTextTheme{


  static TextTheme lightTextTheme = TextTheme(

    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
    headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
    titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
    bodySmall: TextStyle(fontSize: 12, color: Colors.black),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
    headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
    titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.white),
    bodySmall: TextStyle(fontSize: 12, color: Colors.white),
  );
}