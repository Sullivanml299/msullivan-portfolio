import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:msullivan_portfolio/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectsAPIServiceProvider = Provider<ProjectsAPIService>((ref) {
  final service = ProjectsAPIService();
  return service;
});

class ProjectsAPIService {
  Future<List<Project>> getProjects() async {
    try {
      final request = ModelQueries.list(Project.classType);
      final response = await Amplify.API.query(request: request).response;

      final projects = response.data?.items;
      if (projects != null) {
        safePrint('getProjects errors: ${response.errors}');
        return const [];
      }
      projects!.sort((a, b) =>
          a!.createdDate.getDateTime().compareTo(b!.createdDate.getDateTime()));
      return projects.map((e) => e as Project).toList();
    } on ApiException catch (e) {
      safePrint('AmplifyException $e');
    }
    return const [];
  }
}
