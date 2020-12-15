import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTypography {
  ColorScheme mainColorScheme;

  MainTypography({this.mainColorScheme});

  String headingFont = GoogleFonts.baloo().fontFamily;
  String bodyFont = GoogleFonts.roboto().fontFamily;

  TextTheme get mainTextTheme => TextTheme(
        headline1: TextStyle(
            fontFamily: headingFont,
            fontSize: 60,
            fontWeight: FontWeight.w900,
            color: mainColorScheme.onBackground),
        headline2: TextStyle(
            fontFamily: headingFont,
            fontSize: 36,
            fontWeight: FontWeight.w700,
            color: mainColorScheme.onBackground),
        headline3: TextStyle(
            fontFamily: headingFont,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: mainColorScheme.onSecondary),
        bodyText1: TextStyle(
            fontFamily: bodyFont,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: mainColorScheme.onBackground),
        bodyText2: TextStyle(
            fontFamily: bodyFont,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: mainColorScheme.onSecondary),
        caption: TextStyle(
          fontFamily: headingFont,
          fontSize: 20,
          color: mainColorScheme.primary,
          fontWeight: FontWeight.w700,
        )
      );
}
