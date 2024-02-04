import 'package:flutter/material.dart';

class AppColors {
  static Color color2d256b = const Color(0xff2d256b);
  static Color colorFFF = Colors.white;
  static Color colorFFF60 = Colors.white60;
  static Color colorC042D7 = const Color(0xffC042D7);
  static Color mainBackground = const Color(0xff121433);
  static LinearGradient mainBackgroundGradient = const LinearGradient(
      end: Alignment.centerLeft,
      begin: Alignment.centerRight,
      colors: [
        Color(0xff161336),
        Color(0xff2a255b),

        // Color(0xff350D53),
      ]);
  static LinearGradient mainButtonGradient = const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
    Color(0xff8b21c2),
    Color(0xff6f3fcd),
  ]);
}
