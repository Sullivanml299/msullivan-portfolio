// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectControllerHash() => r'49a6aced298e943271d8950343920cf70e349c71';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProjectController
    extends BuildlessAutoDisposeAsyncNotifier<Project> {
  late final String projectId;

  FutureOr<Project> build(
    String projectId,
  );
}

/// See also [ProjectController].
@ProviderFor(ProjectController)
const projectControllerProvider = ProjectControllerFamily();

/// See also [ProjectController].
class ProjectControllerFamily extends Family<AsyncValue<Project>> {
  /// See also [ProjectController].
  const ProjectControllerFamily();

  /// See also [ProjectController].
  ProjectControllerProvider call(
    String projectId,
  ) {
    return ProjectControllerProvider(
      projectId,
    );
  }

  @override
  ProjectControllerProvider getProviderOverride(
    covariant ProjectControllerProvider provider,
  ) {
    return call(
      provider.projectId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'projectControllerProvider';
}

/// See also [ProjectController].
class ProjectControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProjectController, Project> {
  /// See also [ProjectController].
  ProjectControllerProvider(
    String projectId,
  ) : this._internal(
          () => ProjectController()..projectId = projectId,
          from: projectControllerProvider,
          name: r'projectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectControllerHash,
          dependencies: ProjectControllerFamily._dependencies,
          allTransitiveDependencies:
              ProjectControllerFamily._allTransitiveDependencies,
          projectId: projectId,
        );

  ProjectControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.projectId,
  }) : super.internal();

  final String projectId;

  @override
  FutureOr<Project> runNotifierBuild(
    covariant ProjectController notifier,
  ) {
    return notifier.build(
      projectId,
    );
  }

  @override
  Override overrideWith(ProjectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProjectControllerProvider._internal(
        () => create()..projectId = projectId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        projectId: projectId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProjectController, Project>
      createElement() {
    return _ProjectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectControllerProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProjectControllerRef on AutoDisposeAsyncNotifierProviderRef<Project> {
  /// The parameter `projectId` of this provider.
  String get projectId;
}

class _ProjectControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProjectController, Project>
    with ProjectControllerRef {
  _ProjectControllerProviderElement(super.provider);

  @override
  String get projectId => (origin as ProjectControllerProvider).projectId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
