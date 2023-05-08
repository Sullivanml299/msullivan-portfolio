import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/entry.dart';

class EntryGrid extends StatelessWidget {
  const EntryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Entry();
            }));
  }
}
