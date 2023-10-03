/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Project type in your schema. */
class Project extends amplify_core.Model {
  static const classType = const _ProjectModelType();
  final String id;
  final String? _projectName;
  final String? _projectDescription;
  final amplify_core.TemporalDate? _createdDate;
  final String? _youtubeUrl;
  final String? _projectImageUrl;
  final String? _projectImageKey;
  final String? _projectGifUrl;
  final String? _projectGifKey;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ProjectModelIdentifier get modelIdentifier {
      return ProjectModelIdentifier(
        id: id
      );
  }
  
  String get projectName {
    try {
      return _projectName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get projectDescription {
    try {
      return _projectDescription!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate get createdDate {
    try {
      return _createdDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get youtubeUrl {
    try {
      return _youtubeUrl!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get projectImageUrl {
    return _projectImageUrl;
  }
  
  String? get projectImageKey {
    return _projectImageKey;
  }
  
  String? get projectGifUrl {
    return _projectGifUrl;
  }
  
  String? get projectGifKey {
    return _projectGifKey;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Project._internal({required this.id, required projectName, required projectDescription, required createdDate, required youtubeUrl, projectImageUrl, projectImageKey, projectGifUrl, projectGifKey, createdAt, updatedAt}): _projectName = projectName, _projectDescription = projectDescription, _createdDate = createdDate, _youtubeUrl = youtubeUrl, _projectImageUrl = projectImageUrl, _projectImageKey = projectImageKey, _projectGifUrl = projectGifUrl, _projectGifKey = projectGifKey, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Project({String? id, required String projectName, required String projectDescription, required amplify_core.TemporalDate createdDate, required String youtubeUrl, String? projectImageUrl, String? projectImageKey, String? projectGifUrl, String? projectGifKey}) {
    return Project._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      projectName: projectName,
      projectDescription: projectDescription,
      createdDate: createdDate,
      youtubeUrl: youtubeUrl,
      projectImageUrl: projectImageUrl,
      projectImageKey: projectImageKey,
      projectGifUrl: projectGifUrl,
      projectGifKey: projectGifKey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
      id == other.id &&
      _projectName == other._projectName &&
      _projectDescription == other._projectDescription &&
      _createdDate == other._createdDate &&
      _youtubeUrl == other._youtubeUrl &&
      _projectImageUrl == other._projectImageUrl &&
      _projectImageKey == other._projectImageKey &&
      _projectGifUrl == other._projectGifUrl &&
      _projectGifKey == other._projectGifKey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Project {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("projectName=" + "$_projectName" + ", ");
    buffer.write("projectDescription=" + "$_projectDescription" + ", ");
    buffer.write("createdDate=" + (_createdDate != null ? _createdDate!.format() : "null") + ", ");
    buffer.write("youtubeUrl=" + "$_youtubeUrl" + ", ");
    buffer.write("projectImageUrl=" + "$_projectImageUrl" + ", ");
    buffer.write("projectImageKey=" + "$_projectImageKey" + ", ");
    buffer.write("projectGifUrl=" + "$_projectGifUrl" + ", ");
    buffer.write("projectGifKey=" + "$_projectGifKey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Project copyWith({String? projectName, String? projectDescription, amplify_core.TemporalDate? createdDate, String? youtubeUrl, String? projectImageUrl, String? projectImageKey, String? projectGifUrl, String? projectGifKey}) {
    return Project._internal(
      id: id,
      projectName: projectName ?? this.projectName,
      projectDescription: projectDescription ?? this.projectDescription,
      createdDate: createdDate ?? this.createdDate,
      youtubeUrl: youtubeUrl ?? this.youtubeUrl,
      projectImageUrl: projectImageUrl ?? this.projectImageUrl,
      projectImageKey: projectImageKey ?? this.projectImageKey,
      projectGifUrl: projectGifUrl ?? this.projectGifUrl,
      projectGifKey: projectGifKey ?? this.projectGifKey);
  }
  
  Project copyWithModelFieldValues({
    ModelFieldValue<String>? projectName,
    ModelFieldValue<String>? projectDescription,
    ModelFieldValue<amplify_core.TemporalDate>? createdDate,
    ModelFieldValue<String>? youtubeUrl,
    ModelFieldValue<String?>? projectImageUrl,
    ModelFieldValue<String?>? projectImageKey,
    ModelFieldValue<String?>? projectGifUrl,
    ModelFieldValue<String?>? projectGifKey
  }) {
    return Project._internal(
      id: id,
      projectName: projectName == null ? this.projectName : projectName.value,
      projectDescription: projectDescription == null ? this.projectDescription : projectDescription.value,
      createdDate: createdDate == null ? this.createdDate : createdDate.value,
      youtubeUrl: youtubeUrl == null ? this.youtubeUrl : youtubeUrl.value,
      projectImageUrl: projectImageUrl == null ? this.projectImageUrl : projectImageUrl.value,
      projectImageKey: projectImageKey == null ? this.projectImageKey : projectImageKey.value,
      projectGifUrl: projectGifUrl == null ? this.projectGifUrl : projectGifUrl.value,
      projectGifKey: projectGifKey == null ? this.projectGifKey : projectGifKey.value
    );
  }
  
  Project.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _projectName = json['projectName'],
      _projectDescription = json['projectDescription'],
      _createdDate = json['createdDate'] != null ? amplify_core.TemporalDate.fromString(json['createdDate']) : null,
      _youtubeUrl = json['youtubeUrl'],
      _projectImageUrl = json['projectImageUrl'],
      _projectImageKey = json['projectImageKey'],
      _projectGifUrl = json['projectGifUrl'],
      _projectGifKey = json['projectGifKey'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'projectName': _projectName, 'projectDescription': _projectDescription, 'createdDate': _createdDate?.format(), 'youtubeUrl': _youtubeUrl, 'projectImageUrl': _projectImageUrl, 'projectImageKey': _projectImageKey, 'projectGifUrl': _projectGifUrl, 'projectGifKey': _projectGifKey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'projectName': _projectName,
    'projectDescription': _projectDescription,
    'createdDate': _createdDate,
    'youtubeUrl': _youtubeUrl,
    'projectImageUrl': _projectImageUrl,
    'projectImageKey': _projectImageKey,
    'projectGifUrl': _projectGifUrl,
    'projectGifKey': _projectGifKey,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ProjectModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ProjectModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PROJECTNAME = amplify_core.QueryField(fieldName: "projectName");
  static final PROJECTDESCRIPTION = amplify_core.QueryField(fieldName: "projectDescription");
  static final CREATEDDATE = amplify_core.QueryField(fieldName: "createdDate");
  static final YOUTUBEURL = amplify_core.QueryField(fieldName: "youtubeUrl");
  static final PROJECTIMAGEURL = amplify_core.QueryField(fieldName: "projectImageUrl");
  static final PROJECTIMAGEKEY = amplify_core.QueryField(fieldName: "projectImageKey");
  static final PROJECTGIFURL = amplify_core.QueryField(fieldName: "projectGifUrl");
  static final PROJECTGIFKEY = amplify_core.QueryField(fieldName: "projectGifKey");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Project";
    modelSchemaDefinition.pluralName = "Projects";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROJECTNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROJECTDESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.CREATEDDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.YOUTUBEURL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROJECTIMAGEURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROJECTIMAGEKEY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROJECTGIFURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROJECTGIFKEY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ProjectModelType extends amplify_core.ModelType<Project> {
  const _ProjectModelType();
  
  @override
  Project fromJson(Map<String, dynamic> jsonData) {
    return Project.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Project';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Project] in your schema.
 */
class ProjectModelIdentifier implements amplify_core.ModelIdentifier<Project> {
  final String id;

  /** Create an instance of ProjectModelIdentifier using [id] the primary key. */
  const ProjectModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ProjectModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ProjectModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}