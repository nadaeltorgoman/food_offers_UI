// app themes
import 'package:flutter/material.dart';
import 'package:food_offers/utils/app_colors.dart';

class AppThemes {
  static final customLightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.white,
        color: AppColors.secondaryColor,
      ),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      
      brightness: Brightness.light,
      //primaryColor: AppColors.primaryColor,
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.buttonColor,
        textTheme: ButtonTextTheme.primary,
      ),
      );
}