import 'package:flutter/material.dart';

class MainColorScheme {

  MainColorScheme();

  ColorScheme get mainColorScheme => ColorScheme(
    primary: Color(0xff4299E1),
    primaryVariant: Color(0xff1A202C),
    secondary: Color(0xff63B3ED),
    secondaryVariant: Color(0xff2D3748),
    surface: Colors.white,
    background: Color(0xff171923),
    error: Color(0xffb00020),
    onPrimary: Colors.grey.shade900,
    onSecondary: Colors.white,
    onSurface: Colors.grey.shade900,
    onBackground: Color(0xffffffff),
    onError: Colors.white,
    brightness: Brightness.dark,
  );
}