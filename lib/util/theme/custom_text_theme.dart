import 'package:app_theme_change/util/app_constants.dart';
import 'package:flutter/material.dart';

extension CustomTextTheme on TextTheme {
  TextStyle titleExtraLarge(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark
        ? TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)
        : TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);
  }
}
