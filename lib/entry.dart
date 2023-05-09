import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/utils/color_switcher.dart';

import 'utils/youtube_player.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  double borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromARGB(255, 36, 37, 37),
        elevation: 10,
        shadowColor: InheritedColor.of(context).color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.75,
                width: constraints.maxWidth,
                child: buildPreview(),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.25,
                width: constraints.maxWidth,
                child: buildDetails(),
              )
            ],
          );
        }));
  }

  Widget buildPreview() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius)),
      child: Image.asset('images/watchers.gif', fit: BoxFit.fill),
    );
  }

  Widget buildDetails() {
    return Center(
        child: Text(
      "test",
      style: TextStyle(fontSize: 10),
    ));
  }
}
