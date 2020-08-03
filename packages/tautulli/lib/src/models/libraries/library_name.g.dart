// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliLibraryName _$TautulliLibraryNameFromJson(Map<String, dynamic> json) {
  return TautulliLibraryName(
    sectionId: json['section_id'] as int,
    sectionName: json['section_name'] as String,
    sectionType:
        TautulliUtilities.sectionTypeToObject(json['section_type'] as String),
    agent: json['agent'] as String,
  );
}

Map<String, dynamic> _$TautulliLibraryNameToJson(
        TautulliLibraryName instance) =>
    <String, dynamic>{
      'section_id': instance.sectionId,
      'section_name': instance.sectionName,
      'section_type':
          TautulliUtilities.sectionTypeToString(instance.sectionType),
      'agent': instance.agent,
    };
