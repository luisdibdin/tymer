import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_timer/widgets/form_field.dart';

class CustomForm extends StatelessWidget {
  final List<CustomFormField> children;

  CustomForm({this.children});

  void initialiseFieldEdges() {
    for (int i = 0; i < children.length; i++) {
      if (children.length == 1) {
        children[i].topEdges = 20.0;
        children[i].bottomEdges = 20.0;
      } else {
        children[0].topEdges = 20.0;
        children[0].bottomEdges = 0.0;
        children[children.length - 1].topEdges = 0.0;
        children[children.length - 1].bottomEdges = 20.0;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    initialiseFieldEdges();
    return Stack(children: [
      for (int i = 0; i < children.length; i++)
        Padding(
          padding: EdgeInsets.only(top: 52.0 * i),
          child: children[i],
        )
    ]);
  }
}
