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
      if (projects == null) {
        safePrint('getProjects errors: ${response.errors}');
        return const [];
      }
      projects.sort((a, b) =>
          a!.createdDate.getDateTime().compareTo(b!.createdDate.getDateTime()));
      return projects.map((e) => e as Project).toList();
    } on ApiException catch (e) {
      safePrint('AmplifyException $e');
    }
    return const [];
  }

  Future<void> addProject(Project trip) async {
    try {
      final request = ModelMutations.create(trip);
      final response = await Amplify.API.mutate(request: request).response;

      final createdProject = response.data;
      if (createdProject == null) {
        safePrint('addProject errors: ${response.errors}');
        return;
      }
    } on Exception catch (error) {
      safePrint('addProject failed: $error');
    }
  }

  Future<void> deleteProject(Project trip) async {
    try {
      await Amplify.API
          .mutate(
            request: ModelMutations.delete(trip),
          )
          .response;
    } on Exception catch (error) {
      safePrint('deleteProject failed: $error');
    }
  }

  Future<void> updateProject(Project updatedProject) async {
    try {
      await Amplify.API
          .mutate(
            request: ModelMutations.update(updatedProject),
          )
          .response;
    } on Exception catch (error) {
      safePrint('updateProject failed: $error');
    }
  }

  Future<Project> getProject(String tripId) async {
    try {
      final request = ModelQueries.get(
        Project.classType,
        ProjectModelIdentifier(id: tripId),
      );
      final response = await Amplify.API.query(request: request).response;

      final trip = response.data!;
      return trip;
    } on Exception catch (error) {
      safePrint('getProject failed: $error');
      rethrow;
    }
  }
}
