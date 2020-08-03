// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliServer _$TautulliServerFromJson(Map<String, dynamic> json) {
  return TautulliServer(
    httpsRequired:
        TautulliUtilities.stringToBoolean(json['httpsRequired'] as String),
    local: TautulliUtilities.stringToBoolean(json['local'] as String),
    clientIdentifier: json['clientIdentifier'] as String,
    label: json['label'] as String,
    ipAddress: json['ip'] as String,
    port: TautulliUtilities.stringToInteger(json['port'] as String),
    uri: json['uri'] as String,
    value: json['value'] as String,
    isCloud: json['is_cloud'] as bool,
  );
}

Map<String, dynamic> _$TautulliServerToJson(TautulliServer instance) =>
    <String, dynamic>{
      'httpsRequired':
          TautulliUtilities.booleanToString(instance.httpsRequired),
      'local': TautulliUtilities.booleanToString(instance.local),
      'clientIdentifier': instance.clientIdentifier,
      'label': instance.label,
      'ip': instance.ipAddress,
      'port': TautulliUtilities.integerToString(instance.port),
      'uri': instance.uri,
      'value': instance.value,
      'is_cloud': instance.isCloud,
    };
