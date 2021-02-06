// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_space.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrDiskSpace _$RadarrDiskSpaceFromJson(Map<String, dynamic> json) {
  return RadarrDiskSpace(
    path: json['path'] as String,
    label: json['label'] as String,
    freeSpace: json['freeSpace'] as int,
    totalSpace: json['totalSpace'] as int,
  );
}

Map<String, dynamic> _$RadarrDiskSpaceToJson(RadarrDiskSpace instance) =>
    <String, dynamic>{
      'path': instance.path,
      'label': instance.label,
      'freeSpace': instance.freeSpace,
      'totalSpace': instance.totalSpace,
    };
