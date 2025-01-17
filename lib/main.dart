import 'dart:io';
import 'package:app_theme_change/features/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var path = Directory.current.path;
  // Initialize Hive
  Hive.init(path); // Initialization for Hive
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const App(), // Wrap your app
    ),
  );
}
