import 'package:flutter/material.dart';

class SColors {
  SColors._();

  //App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color itundaPrimary = Color.fromARGB(255, 201, 107, 20);
  static const Color itundaSecondary = Color.fromARGB(255, 151, 41, 179);
  static const Color itundaAccent = Color.fromARGB(255, 255, 37, 121);
  static const Color secondary = Color.fromARGB(255, 249, 176, 58);
  static const Color accent = Color(0xFFb0c7ff);

  //Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c7570);
  static const Color textWhite = Colors.white;

  //BG Colors
  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBG = Color(0xFFf3f5ff);

  //BG Container Colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c7570);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  //Border Colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  //Error and validation Colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  //Neutral shades
  static const Color sblack = Colors.black;
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFe0e0e0);
  static const Color softGrey = Color(0xFFf4f4f4);
  static const Color lightGrey = Color(0xFFf9f9f9);
  static const Color white = Color(0xFFffffff);
}
