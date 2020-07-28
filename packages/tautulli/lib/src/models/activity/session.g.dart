// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliSession _$TautulliSessionFromJson(Map<String, dynamic> json) {
  return TautulliSession(
    sessionKey: TautulliSession._stringToInteger(json['session_key'] as String),
    mediaType: TautulliSession._mediaTypeToObject(json['media_type'] as String),
    viewOffset: TautulliSession._stringToInteger(json['view_offset'] as String),
    progressPercent:
        TautulliSession._stringToInteger(json['progress_percent'] as String),
    qualityProfile: json['quality_profile'] as String,
    syncedVersionProfile: json['synced_version_profile'] as String,
    optimizedVersionProfile: json['optimized_version_profile'] as String,
    user: json['user'] as String,
    channelStream: json['channel_stream'] as int,
    sectionId: TautulliSession._stringToInteger(json['section_id'] as String),
    libraryName: json['library_name'] as String,
    ratingKey: TautulliSession._stringToInteger(json['rating_key'] as String),
    parentRatingKey:
        TautulliSession._stringToInteger(json['parent_rating_key'] as String),
    grandparentRatingKey: TautulliSession._stringToInteger(
        json['grandparent_rating_key'] as String),
  );
}

Map<String, dynamic> _$TautulliSessionToJson(TautulliSession instance) =>
    <String, dynamic>{
      'media_type': TautulliSession._mediaTypeToString(instance.mediaType),
      'session_key': TautulliSession._integerToString(instance.sessionKey),
      'view_offset': TautulliSession._integerToString(instance.viewOffset),
      'progress_percent':
          TautulliSession._integerToString(instance.progressPercent),
      'quality_profile': instance.qualityProfile,
      'synced_version_profile': instance.syncedVersionProfile,
      'optimized_version_profile': instance.optimizedVersionProfile,
      'user': instance.user,
      'channel_stream': instance.channelStream,
      'section_id': TautulliSession._integerToString(instance.sectionId),
      'library_name': instance.libraryName,
      'rating_key': TautulliSession._integerToString(instance.ratingKey),
      'parent_rating_key':
          TautulliSession._integerToString(instance.parentRatingKey),
      'grandparent_rating_key':
          TautulliSession._integerToString(instance.grandparentRatingKey),
    };
