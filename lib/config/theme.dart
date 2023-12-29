import 'package:ammn/config/colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  colorSchemeSeed: AppColors.primary,
  useMaterial3: false,
  splashColor: Colors.transparent,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  fontFamily: 'Tajawal',
);
