import 'package:flutter/material.dart';

import 'utils/color_switcher.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.img,
  });

  final Image img;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      color: Color.fromARGB(255, 35, 37, 37),
      shadowColor: InheritedColor.of(context).color,
      child: SizedBox(
          height: 200.0,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Align(
                alignment: Alignment.center,
                child: img,
              ))),
    );
  }
}
