
import 'package:flutter/material.dart';
import 'package:flutter_course_app/src/constants/colors.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: secondaryColor,
        floatingLabelStyle: TextStyle(color: secondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: secondaryColor),
        )
      );

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: secondaryColor,
      floatingLabelStyle: TextStyle(color: primaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2,color: primaryColor),
      )
  );
}