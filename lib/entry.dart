import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/utils/color_switcher.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: SizedBox(
      height: 70.0,
      width: 100.0,
      child: Card(
        color: Color.fromARGB(255, 36, 37, 37),
        elevation: 10,
        shadowColor: InheritedColor.of(context).color,
        child: Center(child: Text('Entry')),
      ),
    ));
  }
}
