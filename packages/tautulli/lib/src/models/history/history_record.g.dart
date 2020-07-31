// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliHistoryRecord _$TautulliHistoryRecordFromJson(
    Map<String, dynamic> json) {
  return TautulliHistoryRecord(
    referenceId: json['reference_id'] as int,
    rowId: json['row_id'] as int,
    id: json['id'] as int,
    date: TautulliUtilities.millisecondsIntegerToDateTime(json['date'] as int),
    started:
        TautulliUtilities.millisecondsIntegerToDateTime(json['started'] as int),
    stopped:
        TautulliUtilities.millisecondsIntegerToDateTime(json['stopped'] as int),
    duration:
        TautulliUtilities.secondsIntegerToDuration(json['duration'] as int),
    pausedCounter: TautulliUtilities.secondsIntegerToDuration(
        json['paused_counter'] as int),
    userId: json['user_id'] as int,
    user: json['user'] as String,
    friendlyName: json['friendly_name'] as String,
    platform: json['platform'] as String,
    player: json['player'] as String,
    product: json['product'] as String,
    ipAddress: json['ip_address'] as String,
    live: TautulliUtilities.integerToBoolean(json['live'] as int),
    mediaType:
        TautulliUtilities.mediaTypeToObject(json['media_type'] as String),
    ratingKey: TautulliHistoryRecord._ensureIntegerFromJson(json['rating_key']),
    parentRatingKey:
        TautulliHistoryRecord._ensureIntegerFromJson(json['parent_rating_key']),
    grandparentRatingKey: TautulliHistoryRecord._ensureIntegerFromJson(
        json['grandparent_rating_key']),
    fullTitle: json['full_title'] as String,
    title: json['title'] as String,
    parentTitle: json['parent_title'] as String,
    grandparentTitle: json['grandparent_title'] as String,
    originalTitle: json['original_title'] as String,
    year: json['year'] as int,
    mediaIndex:
        TautulliHistoryRecord._ensureIntegerFromJson(json['media_index']),
    parentMediaIndex: TautulliHistoryRecord._ensureIntegerFromJson(
        json['parent_media_index']),
    thumb: json['thumb'] as String,
    originallyAvailableAt: json['originally_available_at'] as String,
    guid: json['guid'] as String,
    transcodeDecision: TautulliUtilities.transcodeDecisionToObject(
        json['transcode_decision'] as String),
    percentComplete: json['percent_complete'] as int,
    watchedStatus:
        TautulliUtilities.watchedStatusToObject(json['watched_status'] as num),
    groupCount: json['group_count'] as int,
    groupIds: TautulliUtilities.stringToListString(json['group_ids'] as String),
    state: TautulliUtilities.sessionStateToObject(json['state'] as String),
    sessionKey: json['session_key'] as int,
  );
}

Map<String, dynamic> _$TautulliHistoryRecordToJson(
        TautulliHistoryRecord instance) =>
    <String, dynamic>{
      'reference_id': instance.referenceId,
      'row_id': instance.rowId,
      'id': instance.id,
      'date': TautulliUtilities.dateTimeToIntegerMilliseconds(instance.date),
      'started':
          TautulliUtilities.dateTimeToIntegerMilliseconds(instance.started),
      'stopped':
          TautulliUtilities.dateTimeToIntegerMilliseconds(instance.stopped),
      'duration': TautulliUtilities.durationToSecondsInteger(instance.duration),
      'paused_counter':
          TautulliUtilities.durationToSecondsInteger(instance.pausedCounter),
      'user_id': instance.userId,
      'user': instance.user,
      'friendly_name': instance.friendlyName,
      'platform': instance.platform,
      'product': instance.product,
      'player': instance.player,
      'ip_address': instance.ipAddress,
      'live': TautulliUtilities.booleanToInteger(instance.live),
      'media_type': TautulliUtilities.mediaTypeToString(instance.mediaType),
      'rating_key':
          TautulliHistoryRecord._originalTypeToJson(instance.ratingKey),
      'parent_rating_key':
          TautulliHistoryRecord._originalTypeToJson(instance.parentRatingKey),
      'grandparent_rating_key': TautulliHistoryRecord._originalTypeToJson(
          instance.grandparentRatingKey),
      'full_title': instance.fullTitle,
      'title': instance.title,
      'parent_title': instance.parentTitle,
      'grandparent_title': instance.grandparentTitle,
      'original_title': instance.originalTitle,
      'year': instance.year,
      'media_index':
          TautulliHistoryRecord._originalTypeToJson(instance.mediaIndex),
      'parent_media_index':
          TautulliHistoryRecord._originalTypeToJson(instance.parentMediaIndex),
      'thumb': instance.thumb,
      'originally_available_at': instance.originallyAvailableAt,
      'guid': instance.guid,
      'transcode_decision': TautulliUtilities.transcodeDecisionToString(
          instance.transcodeDecision),
      'percent_complete': instance.percentComplete,
      'watched_status':
          TautulliUtilities.watchedStatusToDouble(instance.watchedStatus),
      'group_count': instance.groupCount,
      'group_ids': TautulliUtilities.listStringToString(instance.groupIds),
      'state': TautulliUtilities.sessionStateToString(instance.state),
      'session_key': instance.sessionKey,
    };
