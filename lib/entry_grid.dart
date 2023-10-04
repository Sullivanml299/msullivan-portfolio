import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/entry.dart';
import 'package:msullivan_portfolio/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EntryGrid extends StatelessWidget {
  const EntryGrid(
      {Key? key,
      required this.projectsList,
      required this.showEntryDetails,
      required this.isMobile})
      : super(key: key);
  final AsyncValue<List<Project>> projectsList;
  final Function showEntryDetails;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return projectsList.when(
        data: (projectList) => buildGrid(projectList),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Text('Error: $error'));
  }

  Widget buildGrid(List<Project> projectList) {
    if (projectList.length == 0) {
      return Center(child: Text('No projects found'));
    }
    return Expanded(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobile ? 1 : 3,
                  childAspectRatio: 15 / 9,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: projectList.length,
                itemBuilder: (BuildContext context, int index) {
                  //NOTE: UniqueKey() is used to force the widget to rebuild
                  return Entry(
                      key: UniqueKey(),
                      project: projectList[index],
                      showEntryDetails: showEntryDetails);
                })));
  }
}
