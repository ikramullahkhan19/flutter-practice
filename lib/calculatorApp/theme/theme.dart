import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.orange,
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 32, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 24, color: Colors.grey),
  ),
);
