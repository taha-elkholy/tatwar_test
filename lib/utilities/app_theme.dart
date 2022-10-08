import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';

class AppTheme {
  static ThemeData appThemeLight = ThemeData(
    primaryColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: AppSizes.zeroElevation,
      titleTextStyle: TextStyle(
          color: AppColors.blackColor,
          fontSize: AppSizes.textSize18,
          fontWeight: FontWeight.bold),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: AppColors.blackColor,
        fontSize: AppSizes.textSize12,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: AppSizes.textSize15,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: AppSizes.textSize19,
        fontWeight: FontWeight.normal,
      ),
      headlineLarge: TextStyle(
        color: AppColors.darkGreyColor,
        fontSize: AppSizes.textSize35,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        textStyle: const TextStyle(
          fontSize: AppSizes.textSize18,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: AppColors.whiteColor,
      elevation: AppSizes.elevation4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radius8),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      elevation: AppSizes.elevation4,
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizes.radius20),
          topRight: Radius.circular(AppSizes.radius20),
        ),
      ),
    ),
  );
}
