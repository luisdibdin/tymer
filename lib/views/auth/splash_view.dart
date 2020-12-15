import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_timer/widgets/button.dart';
import 'package:workout_timer/widgets/form.dart';
import 'package:workout_timer/widgets/form_field.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _showPassword = false;

  void _toggleVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(FontAwesomeIcons.arrowLeft,
                      size: 30, color: Theme.of(context).colorScheme.primary),
                ),
              ),
              Text('Login', style: Theme.of(context).textTheme.headline2),
              Text(
                'Please enter your details.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: CustomForm(
                  children: [
                    CustomFormField(
                      hint: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    CustomFormField(
                      hint: 'Password',
                      obscureText: _showPassword,
                      suffixIcon: visibilityIconButton(),
                    ),
                  ],
                ),
              ),
              CustomButton(
                fillColor: Theme.of(context).colorScheme.primary,
                text: 'Login',
                height: 40,
                whenPressed: () => print('hello'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Text('FORGOT PASSWORD',
                      style: Theme.of(context).textTheme.caption),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget visibilityIconButton() {
    return GestureDetector(
      onTap: () {
        _toggleVisibility();
      },
      child: Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Icon(
              _showPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
              color: Theme.of(context).colorScheme.primary)),
    );
  }
}
