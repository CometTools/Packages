// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverseerrStatus _$OverseerrStatusFromJson(Map<String, dynamic> json) {
  return OverseerrStatus(
    version: json['version'] as String?,
    commitTag: json['commitTag'] as String?,
  );
}

Map<String, dynamic> _$OverseerrStatusToJson(OverseerrStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  writeNotNull('commitTag', instance.commitTag);
  return val;
}
