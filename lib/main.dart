import 'package:flutter/material.dart';
import 'package:workout_timer/utils/theme/theme.dart';
import 'package:workout_timer/views/auth/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MainTheme().theme,
      home: SplashView(),
    );
  }
}
