import 'package:flutter/material.dart';

class AppTextStyle {
  static final AppTextStyle _instance = AppTextStyle._init();

  static AppTextStyle get instance => _instance;

  AppTextStyle._init();

  TextStyle w900 = const TextStyle(
    fontFamily: 'SFPro',
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );

  TextStyle w700 = const TextStyle(
    fontFamily: 'SFPro',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  TextStyle w600 = const TextStyle(
    fontFamily: 'SFPro',
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  TextStyle w500 = const TextStyle(
    fontFamily: 'SFPro',
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  TextStyle w400 = const TextStyle(
    fontFamily: 'SFPro',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
