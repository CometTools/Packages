// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliSingleLibrary _$TautulliSingleLibraryFromJson(
    Map<String, dynamic> json) {
  return TautulliSingleLibrary(
    rowId: json['row_id'] as int,
    serverId: json['server_id'] as String,
    sectionId: json['section_id'] as int,
    sectionName: json['section_name'] as String,
    sectionType:
        TautulliUtilities.sectionTypeToObject(json['section_type'] as String),
    libraryThumb: json['library_thumb'] as String,
    libraryArt: json['library_art'] as String,
    count: json['count'] as int,
    childCount: json['child_count'] as int,
    parentCount: json['parent_count'] as int,
    isActive: TautulliUtilities.integerToBoolean(json['is_active'] as int),
    doNotify: TautulliUtilities.integerToBoolean(json['do_notify'] as int),
    doNotifyCreated:
        TautulliUtilities.integerToBoolean(json['do_notify_created'] as int),
    keepSection:
        TautulliUtilities.integerToBoolean(json['keep_history'] as int),
    deletedSection:
        TautulliUtilities.integerToBoolean(json['deleted_section'] as int),
  );
}

Map<String, dynamic> _$TautulliSingleLibraryToJson(
        TautulliSingleLibrary instance) =>
    <String, dynamic>{
      'row_id': instance.rowId,
      'server_id': instance.serverId,
      'section_id': instance.sectionId,
      'section_name': instance.sectionName,
      'section_type':
          TautulliUtilities.sectionTypeToString(instance.sectionType),
      'library_thumb': instance.libraryThumb,
      'library_art': instance.libraryArt,
      'count': instance.count,
      'parent_count': instance.parentCount,
      'child_count': instance.childCount,
      'is_active': TautulliUtilities.booleanToInteger(instance.isActive),
      'do_notify': TautulliUtilities.booleanToInteger(instance.doNotify),
      'do_notify_created':
          TautulliUtilities.booleanToInteger(instance.doNotifyCreated),
      'keep_history': TautulliUtilities.booleanToInteger(instance.keepSection),
      'deleted_section':
          TautulliUtilities.booleanToInteger(instance.deletedSection),
    };
