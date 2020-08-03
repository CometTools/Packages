// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliLibrary _$TautulliLibraryFromJson(Map<String, dynamic> json) {
  return TautulliLibrary(
    sectionId: TautulliUtilities.stringToInteger(json['section_id'] as String),
    sectionName: json['section_name'] as String,
    sectionType:
        TautulliUtilities.sectionTypeToObject(json['section_type'] as String),
    agent: json['agent'] as String,
    thumb: json['thumb'] as String,
    art: json['art'] as String,
    count: TautulliUtilities.stringToInteger(json['count'] as String),
    isActive: TautulliUtilities.integerToBoolean(json['is_active'] as int),
    parentCount:
        TautulliUtilities.stringToInteger(json['parent_count'] as String),
    childCount:
        TautulliUtilities.stringToInteger(json['child_count'] as String),
  );
}

Map<String, dynamic> _$TautulliLibraryToJson(TautulliLibrary instance) =>
    <String, dynamic>{
      'section_id': TautulliUtilities.integerToString(instance.sectionId),
      'section_name': instance.sectionName,
      'section_type':
          TautulliUtilities.sectionTypeToString(instance.sectionType),
      'agent': instance.agent,
      'thumb': instance.thumb,
      'art': instance.art,
      'count': TautulliUtilities.integerToString(instance.count),
      'is_active': TautulliUtilities.booleanToInteger(instance.isActive),
      'parent_count': TautulliUtilities.integerToString(instance.parentCount),
      'child_count': TautulliUtilities.integerToString(instance.childCount),
    };
