import 'package:flutter/material.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({
    super.key,
    required this.img,
    required this.onPressed,
  });

  // final double width;
  // final double height;
  final Image img;
  final Function onPressed;

  @override
  Widget build(Object context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      // autofocus: true,
      // focusColor: Color.fromARGB(139, 144, 138, 138),
      child: Container(
        decoration: const BoxDecoration(
          // color: Color.fromARGB(255, 40, 45, 47),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: img,
        ),
      ),
    );
  }
}
