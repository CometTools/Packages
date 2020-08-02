// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliServerIdentity _$TautulliServerIdentityFromJson(
    Map<String, dynamic> json) {
  return TautulliServerIdentity(
    machineIdentifier: json['machine_identifier'] as String,
    version: json['version'] as String,
  );
}

Map<String, dynamic> _$TautulliServerIdentityToJson(
        TautulliServerIdentity instance) =>
    <String, dynamic>{
      'machine_identifier': instance.machineIdentifier,
      'version': instance.version,
    };
