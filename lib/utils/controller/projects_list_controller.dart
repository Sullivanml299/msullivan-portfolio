import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:msullivan_portfolio/utils/project/data/projects_repository.dart';
import 'package:msullivan_portfolio/models/ModelProvider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'projects_list_controller.g.dart';

@riverpod
class ProjectsListController extends _$ProjectsListController {
  Future<List<Project>> _fetchProjects() async {
    final projectsRepository = ref.read(projectsRepositoryProvider);
    final projects = await projectsRepository.getProjects();
    return projects;
  }

  @override
  FutureOr<List<Project>> build() async {
    return _fetchProjects();
  }

  Future<void> addProject({
    required String name,
    required String destination,
    required String startDate,
    required String endDate,
  }) async {
    final project = Project(
      projectName: name,
      destination: destination,
      startDate: TemporalDate(DateTime.parse(startDate)),
      endDate: TemporalDate(DateTime.parse(endDate)),
    );

    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final projectsRepository = ref.read(projectsRepositoryProvider);
      await projectsRepository.add(project);
      return _fetchProjects();
    });
  }

  Future<void> removeProject(Project project) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final projectsRepository = ref.read(projectsRepositoryProvider);
      await projectsRepository.delete(project);

      return _fetchProjects();
    });
  }
}
