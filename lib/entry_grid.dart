import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/entry.dart';

class EntryGrid extends StatelessWidget {
  const EntryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 15 / 9,
                  crossAxisSpacing: 10,
                ),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Entry();
                })));
  }
}
