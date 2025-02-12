import 'package:flutter/material.dart';
import '/features/themes/custom_themes/appbar_theme.dart';
import '/features/themes/custom_themes/bottom_sheet_theme.dart';
import '/features/themes/custom_themes/checkbox_theme.dart';
import '/features/themes/custom_themes/chip_theme.dart';
import '/features/themes/custom_themes/elevated_button_theme.dart';
import '/features/themes/custom_themes/outlined_button_theme.dart';
import '/features/themes/custom_themes/text_theme.dart';
import '/features/themes/custom_themes/textfield_theme.dart';
import '/features/themes/constants/colors.dart';

class SAppTheme {
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    chipTheme: SChipTheme.lightChipTheme,
    appBarTheme: SAppbarTheme.lightAppBarTheme,
    checkboxTheme: SCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: STextfieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: SColors.black,
    textTheme: STextTheme.darkTextTheme,
    chipTheme: SChipTheme.darkChipTheme,
    appBarTheme: SAppbarTheme.darkAppBarTheme,
    checkboxTheme: SCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: STextfieldTheme.darkInputDecorationTheme,
  );
}
