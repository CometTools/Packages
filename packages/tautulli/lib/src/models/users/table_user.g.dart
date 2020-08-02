// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliTableUser _$TautulliTableUserFromJson(Map<String, dynamic> json) {
  return TautulliTableUser(
    rowId: json['row_id'] as int,
    userId: json['user_id'] as int,
    friendlyName: json['friendly_name'] as String,
    userThumb: json['user_thumb'] as String,
    plays: json['plays'] as int,
    duration:
        TautulliUtilities.secondsIntegerToDuration(json['duration'] as int),
    lastSeen: TautulliUtilities.millisecondsIntegerToDateTime(
        json['last_seen'] as int),
    lastPlayed: json['last_played'] as String,
    historyRowId: json['history_row_id'] as int,
    ipAddress: json['ip_address'] as String,
    platform: json['platform'] as String,
    player: json['player'] as String,
    ratingKey: json['rating_key'] as int,
    mediaType:
        TautulliUtilities.mediaTypeToObject(json['media_type'] as String),
    thumb: json['thumb'] as String,
    parentTitle: json['parent_title'] as String,
    year: json['year'] as int,
    mediaIndex: TautulliUtilities.ensureIntegerFromJson(json['media_index']),
    parentMediaIndex:
        TautulliUtilities.ensureIntegerFromJson(json['parent_media_index']),
    live: TautulliUtilities.integerToBoolean(json['live'] as int),
    originallyAvailableAt: json['originally_available_at'] as String,
    guid: json['guid'] as String,
    transcodeDecision: TautulliUtilities.transcodeDecisionToObject(
        json['transcode_decision'] as String),
    doNotify:
        TautulliTableUser._stringToBooleanChecked(json['do_notify'] as String),
    keepHistory: TautulliTableUser._stringToBooleanChecked(
        json['keep_history'] as String),
    allowGuest: TautulliTableUser._stringToBooleanChecked(
        json['allow_guest'] as String),
    isActive: TautulliUtilities.integerToBoolean(json['is_active'] as int),
  );
}

Map<String, dynamic> _$TautulliTableUserToJson(TautulliTableUser instance) =>
    <String, dynamic>{
      'row_id': instance.rowId,
      'user_id': instance.userId,
      'friendly_name': instance.friendlyName,
      'user_thumb': instance.userThumb,
      'plays': instance.plays,
      'duration': TautulliUtilities.durationToSecondsInteger(instance.duration),
      'last_seen':
          TautulliUtilities.dateTimeToIntegerMilliseconds(instance.lastSeen),
      'last_played': instance.lastPlayed,
      'history_row_id': instance.historyRowId,
      'ip_address': instance.ipAddress,
      'platform': instance.platform,
      'player': instance.player,
      'rating_key': instance.ratingKey,
      'media_type': TautulliUtilities.mediaTypeToString(instance.mediaType),
      'thumb': instance.thumb,
      'parent_title': instance.parentTitle,
      'year': instance.year,
      'media_index': instance.mediaIndex,
      'parent_media_index': instance.parentMediaIndex,
      'live': TautulliUtilities.booleanToInteger(instance.live),
      'originally_available_at': instance.originallyAvailableAt,
      'guid': instance.guid,
      'transcode_decision': TautulliUtilities.transcodeDecisionToString(
          instance.transcodeDecision),
      'do_notify': TautulliTableUser._booleanToStringChecked(instance.doNotify),
      'keep_history':
          TautulliTableUser._booleanToStringChecked(instance.keepHistory),
      'allow_guest':
          TautulliTableUser._booleanToStringChecked(instance.allowGuest),
      'is_active': TautulliUtilities.booleanToInteger(instance.isActive),
    };
