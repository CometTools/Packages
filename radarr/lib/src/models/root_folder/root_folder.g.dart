// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrRootFolder _$RadarrRootFolderFromJson(Map<String, dynamic> json) {
  return RadarrRootFolder(
    path: json['path'] as String,
    accessible: json['accessible'] as bool,
    freeSpace: json['freeSpace'] as int,
    unmappedFolders: (json['unmappedFolders'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrUnmappedFolder.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrRootFolderToJson(RadarrRootFolder instance) =>
    <String, dynamic>{
      'path': instance.path,
      'accessible': instance.accessible,
      'freeSpace': instance.freeSpace,
      'unmappedFolders':
          instance.unmappedFolders?.map((e) => e?.toJson())?.toList(),
      'id': instance.id,
    };
