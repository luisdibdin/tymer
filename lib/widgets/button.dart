import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final double height;
  final Color fillColor;
  final Function whenPressed;

  CustomButton({this.fillColor, this.height, this.whenPressed, this.text});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  double buttonSize;
  double topPadding = 0;
  double offset;

  @override
  void initState() {
    // TODO: implement initState
    buttonSize = widget.height / 10;
    offset = buttonSize;
    super.initState();
  }

  Color darken(Color c, [int percent = 30]) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(
        c.alpha,
        (c.red * f).round(),
        (c.green  * f).round(),
        (c.blue * f).round()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height + buttonSize,
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: topPadding),
        child: GestureDetector(
          onTapDown: (_) {
            setState(() {
              topPadding = buttonSize;
              offset = 0;
            });
          },
          onTapUp: (_) {
            setState(() {
              topPadding = 0;
              offset = buttonSize;
            });
            widget.whenPressed();
          },
          onTapCancel: () {
            setState(() {
              topPadding = 0;
              offset = buttonSize;
            });
          },
          child: Container(
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.fillColor,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: darken(widget.fillColor),
                  blurRadius: 0,
                  offset: Offset(0, offset),
                ),
              ],
            ),
            child: Center(
                child: Text(widget.text,
                    style: Theme.of(context).textTheme.headline3)),
          ),
        ),
      ),
    );
  }
}
