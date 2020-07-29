// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliSession _$TautulliSessionFromJson(Map<String, dynamic> json) {
  return TautulliSession(
    sessionKey:
        TautulliModelUtilities.stringToInteger(json['session_key'] as String),
    mediaType: TautulliSession._mediaTypeToObject(json['media_type'] as String),
    viewOffset:
        TautulliModelUtilities.stringToInteger(json['view_offset'] as String),
    progressPercent: TautulliModelUtilities.stringToInteger(
        json['progress_percent'] as String),
    qualityProfile: json['quality_profile'] as String,
    syncedVersionProfile: json['synced_version_profile'] as String,
    optimizedVersionProfile: json['optimized_version_profile'] as String,
    user: json['user'] as String,
    channelStream: json['channel_stream'] as int,
    sectionId:
        TautulliModelUtilities.stringToInteger(json['section_id'] as String),
    libraryName: json['library_name'] as String,
    ratingKey:
        TautulliModelUtilities.stringToInteger(json['rating_key'] as String),
    parentRatingKey: TautulliModelUtilities.stringToInteger(
        json['parent_rating_key'] as String),
    grandparentRatingKey: TautulliModelUtilities.stringToInteger(
        json['grandparent_rating_key'] as String),
    title: json['title'] as String,
    parentTitle: json['parent_title'] as String,
    grandparentTitle: json['grandparent_title'] as String,
    originalTitle: json['original_title'] as String,
    sortTitle: json['sort_title'] as String,
    mediaIndex:
        TautulliModelUtilities.stringToInteger(json['media_index'] as String),
    parentMediaIndex: TautulliModelUtilities.stringToInteger(
        json['parent_media_index'] as String),
    studio: json['studio'] as String,
    contentRating: json['content_rating'] as String,
    summary: json['summary'] as String,
    tagline: json['tagline'] as String,
    rating: TautulliModelUtilities.stringToDouble(json['rating'] as String),
    ratingImage: json['rating_image'] as String,
    audienceRating: TautulliModelUtilities.stringToDouble(
        json['audience_rating'] as String),
    audienceRatingImage: json['audience_rating_image'] as String,
    userRating:
        TautulliModelUtilities.stringToDouble(json['user_rating'] as String),
    duration:
        TautulliModelUtilities.stringToInteger(json['duration'] as String),
    year: TautulliModelUtilities.stringToInteger(json['year'] as String),
    thumb: json['thumb'] as String,
    parentThumb: json['parent_thumb'] as String,
    grandparentThumb: json['grandparent_thumb'] as String,
    art: json['art'] as String,
    banner: json['banner'] as String,
    originallyAvailableAt: TautulliModelUtilities.stringToDateTime(
        json['originally_available_at'] as String),
    addedAt: TautulliModelUtilities.millisecondsStringToDateTime(
        json['added_at'] as String),
    updatedAt: TautulliModelUtilities.millisecondsStringToDateTime(
        json['updated_at'] as String),
    lastViewedAt: TautulliModelUtilities.millisecondsStringToDateTime(
        json['last_viewed_at'] as String),
  );
}

Map<String, dynamic> _$TautulliSessionToJson(TautulliSession instance) =>
    <String, dynamic>{
      'media_type': TautulliSession._mediaTypeToString(instance.mediaType),
      'session_key':
          TautulliModelUtilities.integerToString(instance.sessionKey),
      'view_offset':
          TautulliModelUtilities.integerToString(instance.viewOffset),
      'progress_percent':
          TautulliModelUtilities.integerToString(instance.progressPercent),
      'quality_profile': instance.qualityProfile,
      'synced_version_profile': instance.syncedVersionProfile,
      'optimized_version_profile': instance.optimizedVersionProfile,
      'user': instance.user,
      'channel_stream': instance.channelStream,
      'section_id': TautulliModelUtilities.integerToString(instance.sectionId),
      'library_name': instance.libraryName,
      'rating_key': TautulliModelUtilities.integerToString(instance.ratingKey),
      'parent_rating_key':
          TautulliModelUtilities.integerToString(instance.parentRatingKey),
      'grandparent_rating_key':
          TautulliModelUtilities.integerToString(instance.grandparentRatingKey),
      'title': instance.title,
      'parent_title': instance.parentTitle,
      'grandparent_title': instance.grandparentTitle,
      'original_title': instance.originalTitle,
      'sort_title': instance.sortTitle,
      'media_index':
          TautulliModelUtilities.integerToString(instance.mediaIndex),
      'parent_media_index':
          TautulliModelUtilities.integerToString(instance.parentMediaIndex),
      'studio': instance.studio,
      'content_rating': instance.contentRating,
      'summary': instance.summary,
      'tagline': instance.tagline,
      'rating': TautulliModelUtilities.doubleToString(instance.rating),
      'rating_image': instance.ratingImage,
      'audience_rating':
          TautulliModelUtilities.doubleToString(instance.audienceRating),
      'audience_rating_image': instance.audienceRatingImage,
      'user_rating': TautulliModelUtilities.doubleToString(instance.userRating),
      'duration': TautulliModelUtilities.integerToString(instance.duration),
      'year': TautulliModelUtilities.integerToString(instance.year),
      'thumb': instance.thumb,
      'parent_thumb': instance.parentThumb,
      'grandparent_thumb': instance.grandparentThumb,
      'art': instance.art,
      'banner': instance.banner,
      'originally_available_at':
          TautulliModelUtilities.dateTimeToStringYYYYMMDD(
              instance.originallyAvailableAt),
      'added_at':
          TautulliModelUtilities.dateTimeToStringMilliseconds(instance.addedAt),
      'updated_at': TautulliModelUtilities.dateTimeToStringMilliseconds(
          instance.updatedAt),
      'last_viewed_at': TautulliModelUtilities.dateTimeToStringMilliseconds(
          instance.lastViewedAt),
    };
