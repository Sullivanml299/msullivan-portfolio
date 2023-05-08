import 'package:flutter/material.dart';

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
      shadowColor: Color.fromARGB(255, 0, 208, 255),
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
