// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filesystem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrFileSystem _$RadarrFileSystemFromJson(Map<String, dynamic> json) {
  return RadarrFileSystem(
    parent: json['parent'] as String,
    directories: (json['directories'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrFileSystemDirectory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    files: (json['files'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrFileSystemFile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RadarrFileSystemToJson(RadarrFileSystem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parent', instance.parent);
  writeNotNull(
      'directories', instance.directories?.map((e) => e?.toJson())?.toList());
  writeNotNull('files', instance.files?.map((e) => e?.toJson())?.toList());
  return val;
}
