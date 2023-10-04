import 'dart:async';
import 'dart:io';

import 'package:msullivan_portfolio/common/services/storage_service.dart';
import 'package:msullivan_portfolio/features/project/data/projects_repository.dart';
import 'package:msullivan_portfolio/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_controller.g.dart';

@riverpod
class ProjectController extends _$ProjectController {
  Future<Project> _fetchProject(String projectId) async {
    final projectsRepository = ref.read(projectsRepositoryProvider);
    return projectsRepository.getProject(projectId);
  }

  @override
  FutureOr<Project> build(String projectId) async {
    return _fetchProject(projectId);
  }

  Future<void> updateProject(Project project) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final projectsRepository = ref.read(projectsRepositoryProvider);
      await projectsRepository.update(project);
      return _fetchProject(project.id);
    });
  }

  Future<void> uploadFile(File file, Project project) async {
    final fileKey = await ref.read(storageServiceProvider).uploadFile(file);
    if (fileKey != null) {
      final imageUrl =
          await ref.read(storageServiceProvider).getImageUrl(fileKey);
      final updatedProject =
          project.copyWith(projectImageKey: fileKey, projectImageUrl: imageUrl);
      await ref.read(projectsRepositoryProvider).update(updatedProject);
      ref.read(storageServiceProvider).resetUploadProgress();
    }
  }

  ValueNotifier<double> uploadProgress() {
    return ref.read(storageServiceProvider).getUploadProgress();
  }
}
