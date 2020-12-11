import 'package:flutter/material.dart';
import 'package:workout_timer/utils/theme/foundations/main_color_scheme.dart';

class MainTheme {

  MainTheme();

  ThemeData get theme => ThemeData(
      colorScheme: MainColorScheme().mainColorScheme,
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: 'Roboto', fontWeight: FontWeight.w900, fontSize: 30),
      ));
}
