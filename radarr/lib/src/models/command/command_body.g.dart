// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrCommandBody _$RadarrCommandBodyFromJson(Map<String, dynamic> json) {
  return RadarrCommandBody(
    type: json['type'] as String,
    sendUpdatesToClient: json['sendUpdatesToClient'] as bool,
    updateScheduledTask: json['updateScheduledTask'] as bool,
    completionMessage: json['completionMessage'] as String,
    requiresDiskAccess: json['requiresDiskAccess'] as bool,
    isExclusive: json['isExclusive'] as bool,
    isTypeExclusive: json['isTypeExclusive'] as bool,
    name: json['name'] as String,
    trigger: json['trigger'] as String,
    suppressMessages: json['suppressMessages'] as bool,
  );
}

Map<String, dynamic> _$RadarrCommandBodyToJson(RadarrCommandBody instance) =>
    <String, dynamic>{
      'type': instance.type,
      'sendUpdatesToClient': instance.sendUpdatesToClient,
      'updateScheduledTask': instance.updateScheduledTask,
      'completionMessage': instance.completionMessage,
      'requiresDiskAccess': instance.requiresDiskAccess,
      'isExclusive': instance.isExclusive,
      'isTypeExclusive': instance.isTypeExclusive,
      'name': instance.name,
      'trigger': instance.trigger,
      'suppressMessages': instance.suppressMessages,
    };
