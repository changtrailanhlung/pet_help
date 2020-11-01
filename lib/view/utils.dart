import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class MultiPickerApp {
  static Color navigateButton = Colors.orange;
  static Color pauseButton = Colors.orange;
  static Color pauseButtonDarker = Colors.orange;
  static Color background = Colors.orange;
  static Color brighter = Colors.orange;
  static Color darker = Colors.orange;
}

// I  found this widget on Github
class ThreeDContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color backgroundDarkerColor;
  final Color borderColor;
  final Color borderDarkerColor;
  final double spreadRadius;
  final double offset;
  final double blurRadius;
  const ThreeDContainer({
    Key key,
    @required this.child,
    @required this.width,
    @required this.height,
    @required this.backgroundColor,
    @required this.backgroundDarkerColor,
    this.borderColor,
    this.borderDarkerColor,
    this.blurRadius = 15,
    this.spreadRadius = 4,
    this.offset = 4,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(width / 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(253, 158, 121, 1),
            offset: Offset(offset, offset),
            blurRadius: blurRadius,
          ),
        ],
      ),
      child: Container(
        width: width,
        height: height,
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
