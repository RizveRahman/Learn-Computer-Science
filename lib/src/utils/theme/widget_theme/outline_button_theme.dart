import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class ROutlineButtonThemes {
  ROutlineButtonThemes._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      foregroundColor: secondaryColor,
      side: BorderSide(color: secondaryColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),
      foregroundColor: whiteColor,
      side: BorderSide(color: whiteColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}