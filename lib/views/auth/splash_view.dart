import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tymer', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
      ),
      body: Center(
        child: Text('Hello'),
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
