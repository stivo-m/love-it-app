import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static const Color errorColor = Color(0XFFFF715B);
  static const Color primaryDarkColor = Color(0XFF222222);
  static const Color primaryLightColor = Color(0XFFFFFFFF);
  static const Color primaryColor = Color(0XFF197BBD);
  static const Color accentColor = Color(0XFFF9BD24);
  static const Color offWhiteColor = Color(0xfff8f8ff);

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: primaryDarkColor,
      colorScheme: ColorScheme.dark().copyWith(
        background: primaryDarkColor,
        error: errorColor,
        primary: primaryColor,
        surface: Colors.black54,
        secondary: accentColor,
        onBackground: primaryLightColor,
        onPrimary: primaryLightColor,
        onSecondary: primaryLightColor,
        onError: primaryLightColor,
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      backgroundColor: primaryLightColor,
      colorScheme: ColorScheme.light().copyWith(
        background: primaryLightColor,
        error: errorColor,
        primary: primaryColor,
        surface: offWhiteColor,
        secondary: accentColor,
        onBackground: primaryDarkColor,
        onPrimary: primaryLightColor,
        onSecondary: primaryLightColor,
        onError: primaryLightColor,
      ),
    );
  }
}
