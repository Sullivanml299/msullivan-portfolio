import 'dart:ui';

import 'package:flutter/material.dart';

Color UnityColor = const Color.fromARGB(255, 0, 255, 255);
Color UEColor = const Color.fromARGB(255, 255, 0, 0);
Color WebglColor = const Color.fromARGB(255, 0, 255, 0);
Color LudumColor = const Color.fromARGB(255, 255, 140, 0);

ThemeData MainTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey[900],
  shadowColor: UnityColor,
);
