// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliSession _$TautulliSessionFromJson(Map<String, dynamic> json) {
  return TautulliSession(
    sessionKey:
        TautulliUtilities.stringToInteger(json['session_key'] as String),
    mediaType: TautulliSession._mediaTypeToObject(json['media_type'] as String),
    viewOffset:
        TautulliUtilities.stringToInteger(json['view_offset'] as String),
    progressPercent:
        TautulliUtilities.stringToInteger(json['progress_percent'] as String),
    qualityProfile: json['quality_profile'] as String,
    syncedVersionProfile: json['synced_version_profile'] as String,
    optimizedVersionProfile: json['optimized_version_profile'] as String,
    user: json['user'] as String,
    channelStream: json['channel_stream'] as int,
    sectionId: TautulliUtilities.stringToInteger(json['section_id'] as String),
    libraryName: json['library_name'] as String,
    ratingKey: TautulliUtilities.stringToInteger(json['rating_key'] as String),
    parentRatingKey:
        TautulliUtilities.stringToInteger(json['parent_rating_key'] as String),
    grandparentRatingKey: TautulliUtilities.stringToInteger(
        json['grandparent_rating_key'] as String),
    title: json['title'] as String,
    parentTitle: json['parent_title'] as String,
    grandparentTitle: json['grandparent_title'] as String,
    originalTitle: json['original_title'] as String,
    sortTitle: json['sort_title'] as String,
    mediaIndex:
        TautulliUtilities.stringToInteger(json['media_index'] as String),
    parentMediaIndex:
        TautulliUtilities.stringToInteger(json['parent_media_index'] as String),
    studio: json['studio'] as String,
    contentRating: json['content_rating'] as String,
    summary: json['summary'] as String,
    tagline: json['tagline'] as String,
    rating: TautulliUtilities.stringToDouble(json['rating'] as String),
    ratingImage: json['rating_image'] as String,
    audienceRating:
        TautulliUtilities.stringToDouble(json['audience_rating'] as String),
    audienceRatingImage: json['audience_rating_image'] as String,
    userRating: TautulliUtilities.stringToDouble(json['user_rating'] as String),
    duration: TautulliUtilities.stringToInteger(json['duration'] as String),
    year: TautulliUtilities.stringToInteger(json['year'] as String),
    thumb: json['thumb'] as String,
    parentThumb: json['parent_thumb'] as String,
    grandparentThumb: json['grandparent_thumb'] as String,
    art: json['art'] as String,
    banner: json['banner'] as String,
    originallyAvailableAt: json['originally_available_at'] as String,
    addedAt: TautulliUtilities.millisecondsStringToDateTime(
        json['added_at'] as String),
    updatedAt: TautulliUtilities.millisecondsStringToDateTime(
        json['updated_at'] as String),
    lastViewedAt: TautulliUtilities.millisecondsStringToDateTime(
        json['last_viewed_at'] as String),
    guid: json['guid'] as String,
    parentGuid: json['parent_guid'] as String,
    grandparentGuid: json['grandparent_guid'] as String,
    directors: (json['directors'] as List)?.map((e) => e as String)?.toList(),
    actors: (json['actors'] as List)?.map((e) => e as String)?.toList(),
    writers: (json['writers'] as List)?.map((e) => e as String)?.toList(),
    genres: (json['genres'] as List)?.map((e) => e as String)?.toList(),
    labels: (json['labels'] as List)?.map((e) => e as String)?.toList(),
    collections:
        (json['collections'] as List)?.map((e) => e as String)?.toList(),
    fullTitle: json['full_title'] as String,
    childrenCount: json['children_count'] as int,
    live: TautulliUtilities.integerToBoolean(json['live'] as int),
    id: TautulliUtilities.stringToInteger(json['id'] as String),
    container: json['container'] as String,
    bitrate: TautulliUtilities.stringToInteger(json['bitrate'] as String),
    height: TautulliUtilities.stringToInteger(json['height'] as String),
    width: TautulliUtilities.stringToInteger(json['width'] as String),
    aspectRatio:
        TautulliUtilities.stringToDouble(json['aspect_ratio'] as String),
    videoCodec: json['video_codec'] as String,
    videoResolution:
        TautulliUtilities.stringToInteger(json['video_resolution'] as String),
    videoFullResolution: json['video_full_resolution'] as String,
    videoFramerate: json['video_framerate'] as String,
    videoProfile: json['video_profile'] as String,
    audioCodec: json['audio_codec'] as String,
    audioChannels:
        TautulliUtilities.stringToInteger(json['audio_channels'] as String),
    audioChannelLayout: json['audio_channel_layout'] as String,
    audioProfile: json['audio_profile'] as String,
    optimizedVersion:
        TautulliUtilities.integerToBoolean(json['optimized_version'] as int),
    channelCallSign: json['channel_call_sign'] as String,
    channelIdentifier: json['channel_identifier'] as String,
    channelThumb: json['channel_thumb'] as String,
    file: json['file'] as String,
    fileSize: TautulliUtilities.stringToInteger(json['file_size'] as String),
    indexes: TautulliUtilities.integerToBoolean(json['indexes'] as int),
    selected: TautulliUtilities.integerToBoolean(json['selected'] as int),
    type: TautulliUtilities.stringToInteger(json['type'] as String),
  );
}

Map<String, dynamic> _$TautulliSessionToJson(TautulliSession instance) =>
    <String, dynamic>{
      'media_type': TautulliSession._mediaTypeToString(instance.mediaType),
      'session_key': TautulliUtilities.integerToString(instance.sessionKey),
      'view_offset': TautulliUtilities.integerToString(instance.viewOffset),
      'progress_percent':
          TautulliUtilities.integerToString(instance.progressPercent),
      'quality_profile': instance.qualityProfile,
      'synced_version_profile': instance.syncedVersionProfile,
      'optimized_version_profile': instance.optimizedVersionProfile,
      'user': instance.user,
      'channel_stream': instance.channelStream,
      'section_id': TautulliUtilities.integerToString(instance.sectionId),
      'library_name': instance.libraryName,
      'rating_key': TautulliUtilities.integerToString(instance.ratingKey),
      'parent_rating_key':
          TautulliUtilities.integerToString(instance.parentRatingKey),
      'grandparent_rating_key':
          TautulliUtilities.integerToString(instance.grandparentRatingKey),
      'title': instance.title,
      'parent_title': instance.parentTitle,
      'grandparent_title': instance.grandparentTitle,
      'original_title': instance.originalTitle,
      'sort_title': instance.sortTitle,
      'media_index': TautulliUtilities.integerToString(instance.mediaIndex),
      'parent_media_index':
          TautulliUtilities.integerToString(instance.parentMediaIndex),
      'studio': instance.studio,
      'content_rating': instance.contentRating,
      'summary': instance.summary,
      'tagline': instance.tagline,
      'rating': TautulliUtilities.doubleToString(instance.rating),
      'rating_image': instance.ratingImage,
      'audience_rating':
          TautulliUtilities.doubleToString(instance.audienceRating),
      'audience_rating_image': instance.audienceRatingImage,
      'user_rating': TautulliUtilities.doubleToString(instance.userRating),
      'duration': TautulliUtilities.integerToString(instance.duration),
      'year': TautulliUtilities.integerToString(instance.year),
      'thumb': instance.thumb,
      'parent_thumb': instance.parentThumb,
      'grandparent_thumb': instance.grandparentThumb,
      'art': instance.art,
      'banner': instance.banner,
      'originally_available_at': instance.originallyAvailableAt,
      'added_at':
          TautulliUtilities.dateTimeToStringMilliseconds(instance.addedAt),
      'updated_at':
          TautulliUtilities.dateTimeToStringMilliseconds(instance.updatedAt),
      'last_viewed_at':
          TautulliUtilities.dateTimeToStringMilliseconds(instance.lastViewedAt),
      'guid': instance.guid,
      'parent_guid': instance.parentGuid,
      'grandparent_guid': instance.grandparentGuid,
      'directors': instance.directors,
      'writers': instance.writers,
      'actors': instance.actors,
      'genres': instance.genres,
      'labels': instance.labels,
      'collections': instance.collections,
      'full_title': instance.fullTitle,
      'children_count': instance.childrenCount,
      'live': TautulliUtilities.booleanToInteger(instance.live),
      'id': TautulliUtilities.integerToString(instance.id),
      'container': instance.container,
      'bitrate': TautulliUtilities.integerToString(instance.bitrate),
      'height': TautulliUtilities.integerToString(instance.height),
      'width': TautulliUtilities.integerToString(instance.width),
      'aspect_ratio': TautulliUtilities.doubleToString(instance.aspectRatio),
      'video_codec': instance.videoCodec,
      'video_resolution':
          TautulliUtilities.integerToString(instance.videoResolution),
      'video_full_resolution': instance.videoFullResolution,
      'video_framerate': instance.videoFramerate,
      'video_profile': instance.videoProfile,
      'audio_codec': instance.audioCodec,
      'audio_channels':
          TautulliUtilities.integerToString(instance.audioChannels),
      'audio_channel_layout': instance.audioChannelLayout,
      'audio_profile': instance.audioProfile,
      'optimized_version':
          TautulliUtilities.booleanToInteger(instance.optimizedVersion),
      'channel_call_sign': instance.channelCallSign,
      'channel_identifier': instance.channelIdentifier,
      'channel_thumb': instance.channelThumb,
      'file': instance.file,
      'file_size': TautulliUtilities.integerToString(instance.fileSize),
      'indexes': TautulliUtilities.booleanToInteger(instance.indexes),
      'selected': TautulliUtilities.booleanToInteger(instance.selected),
      'type': TautulliUtilities.integerToString(instance.type),
    };
