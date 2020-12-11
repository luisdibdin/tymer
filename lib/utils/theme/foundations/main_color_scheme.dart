import 'package:flutter/material.dart';

class MainColorScheme {

  MainColorScheme();

  ColorScheme get mainColorScheme => ColorScheme(
    primary: Colors.blue,
    primaryVariant: Colors.blueGrey,
    secondary: Colors.purple,
    secondaryVariant: Colors.deepPurple,
    surface: Colors.blueAccent,
    background: Colors.white,
    error: Colors.red,
    onPrimary: Colors.green,
    onSecondary: Colors.yellow,
    onSurface: Colors.lightBlueAccent,
    onBackground: Colors.grey,
    onError: Colors.redAccent,
    brightness: Brightness.light,
  );
}