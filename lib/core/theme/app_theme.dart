import 'package:docdoc/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorsManger.mainBlue,
      scaffoldBackgroundColor: ColorsManger.white,
    );
  }
}
