import 'package:msullivan_portfolio/utils/project/service/amplify_services.dart';
import 'package:msullivan_portfolio/models/Project.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectsRepositoryProvider = Provider<ProjectsRepository>((ref) {
  final projectsAPIService = ref.read(projectsAPIServiceProvider);
  return ProjectsRepository(projectsAPIService);
});

class ProjectsRepository {
  ProjectsRepository(this.projectsAPIService);

  final ProjectsAPIService projectsAPIService;

  Future<List<Project>> getProjects() {
    return projectsAPIService.getProjects();
  }

  // Future<List<Project>> getPastProjects() {
  //   return projectsAPIService.getPastProjects();
  // }

  // Future<void> add(Project trip) async {
  //   return projectsAPIService.addProject(trip);
  // }

  // Future<void> update(Project updatedProject) async {
  //   return projectsAPIService.updateProject(updatedProject);
  // }

  // Future<void> delete(Project deletedProject) async {
  //   return projectsAPIService.deleteProject(deletedProject);
  // }

  // Future<Project> getProject(String tripId) async {
  //   return projectsAPIService.getProject(tripId);
  // }
}
