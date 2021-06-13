// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverseerrStatus _$OverseerrStatusFromJson(Map<String, dynamic> json) {
  return OverseerrStatus(
    version: json['version'] as String,
    commitTag: json['commitTag'] as String,
    updateAvailable: json['updateAvailable'] as bool,
    commitsBehind: json['commitsBehind'] as int,
  );
}

Map<String, dynamic> _$OverseerrStatusToJson(OverseerrStatus instance) =>
    <String, dynamic>{
      'version': instance.version,
      'commitTag': instance.commitTag,
      'updateAvailable': instance.updateAvailable,
      'commitsBehind': instance.commitsBehind,
    };
