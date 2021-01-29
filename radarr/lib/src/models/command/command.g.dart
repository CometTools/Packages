// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrCommand _$RadarrCommandFromJson(Map<String, dynamic> json) {
  return RadarrCommand(
    name: json['name'] as String,
    commandName: json['commandName'] as String,
    message: json['message'] as String,
    body: json['body'] == null
        ? null
        : RadarrCommandBody.fromJson(json['body'] as Map<String, dynamic>),
    priority: json['priority'] as String,
    status: json['status'] as String,
    queued: RadarrUtilities.dateTimeFromJson(json['queued'] as String),
    started: RadarrUtilities.dateTimeFromJson(json['started'] as String),
    ended: RadarrUtilities.dateTimeFromJson(json['ended'] as String),
    trigger: json['trigger'] as String,
    stateChangeTime:
        RadarrUtilities.dateTimeFromJson(json['stateChangeTime'] as String),
    sendUpdatesToClient: json['sendUpdatesToClient'] as bool,
    updateScheduledTask: json['updateScheduledTask'] as bool,
    lastExecutionTime:
        RadarrUtilities.dateTimeFromJson(json['lastExecutionTime'] as String),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrCommandToJson(RadarrCommand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'commandName': instance.commandName,
      'message': instance.message,
      'body': instance.body?.toJson(),
      'priority': instance.priority,
      'status': instance.status,
      'queued': RadarrUtilities.dateTimeToJson(instance.queued),
      'started': RadarrUtilities.dateTimeToJson(instance.started),
      'ended': RadarrUtilities.dateTimeToJson(instance.ended),
      'trigger': instance.trigger,
      'stateChangeTime':
          RadarrUtilities.dateTimeToJson(instance.stateChangeTime),
      'sendUpdatesToClient': instance.sendUpdatesToClient,
      'updateScheduledTask': instance.updateScheduledTask,
      'lastExecutionTime':
          RadarrUtilities.dateTimeToJson(instance.lastExecutionTime),
      'id': instance.id,
    };
