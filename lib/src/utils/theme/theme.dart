import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/utils/theme/widget_theme/outline_button_theme.dart';
import 'package:flutter_course_app/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:flutter_course_app/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:flutter_course_app/src/utils/theme/widget_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: CustomTextTheme.ligthTextTheme,
    outlinedButtonTheme: ROutlineButtonThemes.lightOutlineButtonTheme,
    elevatedButtonTheme: RElevatedButtonThemes.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: CustomTextTheme.darkTextTheme,
    outlinedButtonTheme: ROutlineButtonThemes.darkOutlineButtonTheme,
    elevatedButtonTheme: RElevatedButtonThemes.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}

// primarySwatch: MaterialColor(0xFFFFE200, <int, Color>{
// 50: Color(0x1AFFE200),
// 100: Color(0x33FFE200),
// 200: Color(0x4DFFE200),
// 300: Color(0x66FFE200),
// 400: Color(0x80FFE200),
// 500: Color(0xFFFFE200),
// 600: Color(0x99FFE200),
// 700: Color(0xB3FFE200),
// 800: Color(0xCCFFE200),
// 900: Color(0xE6FFE200),
