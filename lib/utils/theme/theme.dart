import 'package:flutter/material.dart';
import 'package:workout_timer/utils/theme/foundations/main_color_scheme.dart';
import 'package:workout_timer/utils/theme/foundations/typography.dart';

class MainTheme {

  MainTheme();

  ThemeData get theme => ThemeData(
      colorScheme: MainColorScheme().mainColorScheme,
      textTheme: MainTypography(mainColorScheme:  MainColorScheme().mainColorScheme).mainTextTheme,
      );
}
