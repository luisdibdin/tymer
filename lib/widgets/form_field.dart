import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String position;
  final String hint;
  Widget suffixIcon;
  bool obscureText;
  TextInputType keyboardType;

  CustomFormField(
      {this.position,
      this.hint,
      this.suffixIcon,
      this.obscureText = false,
      this.keyboardType});

  double topEdgesRadius = 0.0;
  double bottomEdgesRadius = 0.0;

  set topEdges(double edge) {
    topEdgesRadius = edge;
  }

  set bottomEdges(double edge) {
    bottomEdgesRadius = edge;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Theme.of(context).colorScheme.primaryVariant,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(topEdgesRadius),
              bottom: Radius.circular(bottomEdgesRadius)),
          borderSide: BorderSide(
            width: 2.0,
            color: Theme.of(context).colorScheme.secondaryVariant,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(topEdgesRadius),
              bottom: Radius.circular(bottomEdgesRadius)),
          borderSide: BorderSide(
            width: 2.0,
            color: Theme.of(context).colorScheme.secondaryVariant,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
