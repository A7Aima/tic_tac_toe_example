import 'package:flutter/material.dart';

final ThemeData themeData = new ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xffFFFFFF),
  primarySwatch: MaterialColor(
    AppColors.colorPalate[500]!.value,
    AppColors.colorPalate,
  ),
  primaryColor: AppColors.colorPalate[500],
  primaryColorDark: AppColors.colorPalate[600],
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: MaterialColor(
      AppColors.colorPalate[500]!.value,
      AppColors.colorPalate,
    ),
    accentColor: AppColors.colorPalate[500],
    brightness: Brightness.light,
    backgroundColor: const Color(0xffFFFFFF),
  ),
  unselectedWidgetColor: AppColors.colorPalate[500],
);

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> colorPalate = const <int, Color>{
    0: const Color(0xff000000),
    50: const Color(0xFFE0F4F9),
    100: const Color(0xFFB3E3F1),
    200: const Color(0xFF8F9BB3),
    300: const Color(0xFFD1D5DB),
    450: const Color(0xFF03bacc),
    400: const Color(0xFFff7c7c),
    // cant remove the upper one because it will throw the error
    // down the values are the color palate for this app
    500: const Color(0xff037EDE),
    520: const Color(0xff06E968),
    540: const Color(0xff9B34CD),
    560: const Color(0xffFBBE04),
    600: const Color(0xffF64205),
    700: const Color(0xff004E00),
  };
}
