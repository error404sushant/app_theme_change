// theme_provider.dart

import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  // Store the current theme mode
  ThemeMode themeMode = ThemeMode.system;

  //region Toggle the theme mode between light, dark, and system
  void toggleTheme({required BuildContext context}) {
    // Get the current theme mode
    final currentThemeMode = Theme.of(context).brightness;
    //Update the theme
    if(currentThemeMode == Brightness.light){
      themeMode = ThemeMode.dark;
    }
    else{
      themeMode = ThemeMode.light;
    }
    //Update ui
    notifyListeners(); // Notify listeners (widgets) to rebuild
  }
  //endregion
}
