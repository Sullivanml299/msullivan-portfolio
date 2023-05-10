import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/entry.dart';

import 'data/entry_data.dart';

class EntryGrid extends StatelessWidget {
  const EntryGrid(
      {Key? key, required this.entryList, required this.showEntryDetails})
      : super(key: key);
  final List<EntryData> entryList;
  final Function showEntryDetails;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 15 / 9,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: entryList.length,
                itemBuilder: (BuildContext context, int index) {
                  //NOTE: UniqueKey() is used to force the widget to rebuild
                  return Entry(
                      key: UniqueKey(),
                      entryData: entryList[index],
                      showEntryDetails: showEntryDetails);
                })));
  }
}
