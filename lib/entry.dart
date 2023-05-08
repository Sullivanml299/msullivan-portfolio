import 'package:flutter/material.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50.0,
      width: 50.0,
      child: Card(
        color: Color.fromARGB(255, 36, 37, 37),
        elevation: 5,
        shadowColor: Color.fromARGB(255, 0, 208, 255),
        child: Center(child: Text('Entry')),
      ),
    );
  }
}
