import 'package:flutter/material.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton(
      {super.key,
      required this.img,
      required this.onPressed,
      required this.isMobile});

  // final double width;
  // final double height;
  final Image img;
  final Function onPressed;
  final bool isMobile;

  @override
  Widget build(Object context) {
    return SizedBox(
      height: isMobile ? 100 : 100,
      child: InkWell(
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
            padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: (isMobile ? 20 : 5)),
            child: img,
          ),
        ),
      ),
    );
  }
}
