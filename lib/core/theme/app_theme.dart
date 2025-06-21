import 'package:docdoc/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorsManager.mainBlue,
      scaffoldBackgroundColor: ColorsManager.white,
    );
  }
}
