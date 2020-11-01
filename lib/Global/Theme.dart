import 'package:flutter/material.dart';
import 'package:pet_help/Global/Colors.dart' as MyColors;

ThemeData lightTheme = ThemeData(
  primarySwatch: MyColors.blue,
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  primarySwatch: MyColors.blue,
  brightness: Brightness.dark,
  accentColor: Colors.blueGrey,
);
