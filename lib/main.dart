import 'dart:io';
import 'package:app_theme_change/features/app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var path = Directory.current.path;
  // Initialize Hive
  Hive.init(path); // Initialization for Hive
  runApp(const App());
}
