import 'package:flutter/material.dart';

abstract class BaseState<HW extends StatefulWidget> extends State<HW> {
  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) =>
      MediaQuery.of(context).size.width * value;

  ThemeData get themeData => Theme.of(context);
}
