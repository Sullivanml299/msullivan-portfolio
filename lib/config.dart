import 'dart:ui';

import 'package:flutter/material.dart';

Color UnityColor = const Color.fromARGB(255, 0, 255, 255);
Color UnrealColor = const Color.fromARGB(255, 255, 0, 0);
Color WebglColor = const Color.fromARGB(255, 0, 255, 0);
Color LudumColor = const Color.fromARGB(255, 255, 0, 255);

ThemeData UnityTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey[900],
  shadowColor: UnityColor,
);

ThemeData UETheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey[900],
  shadowColor: UnrealColor,
);

ThemeData WebglTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey[900],
  shadowColor: WebglColor,
);

ThemeData LudumTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey[900],
  shadowColor: LudumColor,
);
