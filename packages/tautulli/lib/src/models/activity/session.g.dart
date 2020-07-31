// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliSession _$TautulliSessionFromJson(Map<String, dynamic> json) {
  return TautulliSession(
    sessionKey:
        TautulliUtilities.stringToInteger(json['session_key'] as String),
    mediaType:
        TautulliUtilities.mediaTypeToObject(json['media_type'] as String),
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
    duration: TautulliUtilities.millisecondsStringToDuration(
        json['duration'] as String),
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
    videoResolution: json['video_resolution'] as String,
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
    videoCodecLevel: json['video_codec_level'] as String,
    videoBitrate:
        TautulliUtilities.stringToInteger(json['video_bitrate'] as String),
    videoBitDepth:
        TautulliUtilities.stringToInteger(json['video_bit_depth'] as String),
    videoChromaSubsampling: json['video_chroma_subsampling'] as String,
    videoColorPrimaries: json['video_color_primaries'] as String,
    videoColorRange: json['video_color_range'] as String,
    videoColorSpace: json['video_color_space'] as String,
    videoColorTRC: json['video_color_trc'] as String,
    videoFrameRate:
        TautulliUtilities.stringToDouble(json['video_frame_rate'] as String),
    videoRefFrames:
        TautulliUtilities.stringToInteger(json['video_ref_frames'] as String),
    videoHeight:
        TautulliUtilities.stringToInteger(json['video_height'] as String),
    videoWidth:
        TautulliUtilities.stringToInteger(json['video_width'] as String),
    videoLanguage: json['video_language'] as String,
    videoLanguageCode: json['video_language_code'] as String,
    videoDynamicRange: json['video_dynamic_range'] as String,
    videoScanType: json['video_scan_type'] as String,
    audioBitrate:
        TautulliUtilities.stringToInteger(json['audio_bitrate'] as String),
    audioBitrateMode: json['audio_bitrate_mode'] as String,
    audioSampleRate:
        TautulliUtilities.stringToInteger(json['audio_sample_rate'] as String),
    audioLanguage: json['audio_language'] as String,
    audioLanguageCode: json['audio_language_code'] as String,
    subtitleCodec: json['subtitle_codec'] as String,
    subtitleContainer: json['subtitle_container'] as String,
    subtitleFormat: json['subtitle_format'] as String,
    subtitleForced:
        TautulliUtilities.integerToBoolean(json['subtitle_forced'] as int),
    subtitleLanguage: json['subtitle_language'] as String,
    subtitleLanguageCode: json['subtitle_language_code'] as String,
    subtitleLocation: json['subtitle_location'] as String,
    rowId: json['row_id'] as int,
    userId: json['user_id'] as int,
    username: json['username'] as String,
    friendlyName: json['friendly_name'] as String,
    userThumb: json['user_thumb'] as String,
    email: json['email'] as String,
    isActive: TautulliUtilities.integerToBoolean(json['is_active'] as int),
    isAdmin: TautulliUtilities.integerToBoolean(json['is_admin'] as int),
    isHomeUser: TautulliUtilities.integerToBoolean(json['is_home_user'] as int),
    isAllowSync:
        TautulliUtilities.integerToBoolean(json['is_allow_sync'] as int),
    isRestricted:
        TautulliUtilities.integerToBoolean(json['is_restricted'] as int),
    doNotify: TautulliUtilities.integerToBoolean(json['do_notify'] as int),
    keepHistory:
        TautulliUtilities.integerToBoolean(json['keep_history'] as int),
    deletedUser:
        TautulliUtilities.integerToBoolean(json['deleted_user'] as int),
    allowGuest: TautulliUtilities.integerToBoolean(json['allow_guest'] as int),
    sharedLibraries: TautulliUtilities.stringListToIntegerList(
        json['shared_libraries'] as List),
    ipAddress: json['ip_address'] as String,
    ipAddressPublic: json['ip_address_public'] as String,
    device: json['device'] as String,
    platform: json['platform'] as String,
    platformName: json['platform_name'] as String,
    platformVersion: json['platform_version'] as String,
    product: json['product'] as String,
    productVersion: json['product_version'] as String,
    profile: json['profile'] as String,
    player: json['player'] as String,
    machineId: json['machine_id'] as String,
    state: TautulliUtilities.sessionStateToObject(json['state'] as String),
    local: TautulliUtilities.integerToBoolean(json['local'] as int),
    relayed: TautulliUtilities.integerToBoolean(json['relayed'] as int),
    secure: TautulliUtilities.integerToBoolean(json['secure'] as int),
    sessionId: json['session_id'] as String,
    bandwidth: TautulliUtilities.stringToInteger(json['bandwidth'] as String),
    location:
        TautulliUtilities.sessionLocationToObject(json['location'] as String),
    transcodeKey: json['transcode_key'] as String,
    transcodeThrottled:
        TautulliUtilities.integerToBoolean(json['transcode_throttled'] as int),
    transcodeProgress: json['transcode_progress'] as int,
    transcodeSpeed:
        TautulliUtilities.stringToDouble(json['transcode_speed'] as String),
    transcodeAudioChannels: TautulliUtilities.stringToInteger(
        json['transcode_audio_channels'] as String),
    transcodeAudioCodec: json['transcode_audio_codec'] as String,
    transcodeVideoCodec: json['transcode_video_codec'] as String,
    transcodeWidth:
        TautulliUtilities.stringToInteger(json['transcode_width'] as String),
    transcodeHeight:
        TautulliUtilities.stringToInteger(json['transcode_height'] as String),
    transcodeContainer: json['transcode_container'] as String,
    transcodeProtocol: json['transcode_protocol'] as String,
    transcodeHardwareRequested: TautulliUtilities.integerToBoolean(
        json['transcode_hw_requested'] as int),
    transcodeHardwareDecode: json['transcode_hw_decode'] as String,
    transcodeHardwareDecodeTitle: json['transcode_hw_decode_title'] as String,
    transcodeHardwarEencode: json['transcode_hw_encode'] as String,
    transcodeHardwarEencodeTitle: json['transcode_hw_encode_title'] as String,
    transcodeHardwareFullPipeline: TautulliUtilities.integerToBoolean(
        json['transcode_hw_full_pipeline'] as int),
    audioDecision: TautulliUtilities.transcodeDecisionToObject(
        json['audio_decision'] as String),
    videoDecision: TautulliUtilities.transcodeDecisionToObject(
        json['video_decision'] as String),
    subtitleDecision: TautulliUtilities.transcodeDecisionToObject(
        json['subtitle_decision'] as String),
    throttled: TautulliUtilities.stringToBoolean(json['throttled'] as String),
    transcodeHardwareDecoding: TautulliUtilities.integerToBoolean(
        json['transcode_hw_decoding'] as int),
    transcodeHardwareEncoding: TautulliUtilities.integerToBoolean(
        json['transcode_hw_encoding'] as int),
    streamContainer: json['stream_container'] as String,
    streamBitrate:
        TautulliUtilities.stringToInteger(json['stream_bitrate'] as String),
    streamAspectRatio:
        TautulliUtilities.stringToDouble(json['stream_aspect_ratio'] as String),
    streamAudioCodec: json['stream_audio_codec'] as String,
    streamAudioChannels: TautulliUtilities.stringToInteger(
        json['stream_audio_channels'] as String),
    streamAudioChannelLayout: json['stream_audio_channel_layout'] as String,
    streamAudioChannelLayout_: json['stream_audio_channel_layout_'] as String,
    streamVideoCodec: json['stream_video_codec'] as String,
    streamVideoFramerate: json['stream_video_framerate'] as String,
    streamVideoResolution: json['stream_video_resolution'] as String,
    streamVideoHeight: TautulliUtilities.stringToInteger(
        json['stream_video_height'] as String),
    streamVideoWidth:
        TautulliUtilities.stringToInteger(json['stream_video_width'] as String),
    streamDuration: TautulliUtilities.millisecondsStringToDuration(
        json['stream_duration'] as String),
    streamContainerDecision: TautulliUtilities.transcodeDecisionToObject(
        json['stream_container_decision'] as String),
    optimizedVersionTitle: json['optimized_version_title'] as String,
    syncedVersion:
        TautulliUtilities.integerToBoolean(json['synced_version'] as int),
    liveUuid: json['live_uuid'] as String,
    bifThumb: json['bif_thumb'] as String,
    transcodeDecision: TautulliUtilities.transcodeDecisionToObject(
        json['transcode_decision'] as String),
    subtitles: TautulliUtilities.integerToBoolean(json['subtitles'] as int),
    streamVideoFullResolution: json['stream_video_full_resolution'] as String,
    streamVideoDynamicRange: json['stream_video_dynamic_range'] as String,
    streamVideoBitDepth: TautulliUtilities.stringToInteger(
        json['stream_video_bit_depth'] as String),
    streamVideoBitrate: TautulliUtilities.stringToInteger(
        json['stream_video_bitrate'] as String),
    streamVideoChromaSubsampling:
        json['stream_video_chroma_subsampling'] as String,
    streamVideoCodecLevel: json['stream_video_codec_level'] as String,
    streamVideoColorPrimaries: json['stream_video_color_primaries'] as String,
    streamVideoColorRange: json['stream_video_color_range'] as String,
    streamVideoColorSpace: json['stream_video_color_space'] as String,
    streamVideoColorTRC: json['stream_video_color_trc'] as String,
    streamVideoRefFrames: TautulliUtilities.stringToInteger(
        json['stream_video_ref_frames'] as String),
    streamVideoDecision: TautulliUtilities.transcodeDecisionToObject(
        json['stream_video_decision'] as String),
    streamVideoLanguage: json['stream_video_language'] as String,
    streamVideoLanguageCode: json['stream_video_language_code'] as String,
    streamVideoScanType: json['stream_video_scan_type'] as String,
    streamAudioBitrate: TautulliUtilities.stringToInteger(
        json['stream_audio_bitrate'] as String),
    streamAudioBitrateMode: json['stream_audio_bitrate_mode'] as String,
    streamAudioDecision: TautulliUtilities.transcodeDecisionToObject(
        json['stream_audio_decision'] as String),
    streamAudioLanguage: json['stream_audio_language'] as String,
    streamAudioLanguageCode: json['stream_audio_language_code'] as String,
    streamAudioSampleRate: TautulliUtilities.stringToInteger(
        json['stream_audio_sample_rate'] as String),
    streamSubtitleCodec: json['stream_subtitle_codec'] as String,
    streamSubtitleContainer: json['stream_subtitle_container'] as String,
    streamSubtitleDecision: TautulliUtilities.transcodeDecisionToObject(
        json['stream_subtitle_decision'] as String),
    streamSubtitleForced: TautulliUtilities.integerToBoolean(
        json['stream_subtitle_forced'] as int),
    streamSubtitleFormat: json['stream_subtitle_format'] as String,
    streamSubtitleLanguage: json['stream_subtitle_language'] as String,
    streamSubtitleLanguageCode: json['stream_subtitle_language_code'] as String,
    streamSubtitleLocation: json['stream_subtitle_location'] as String,
    streamSubtitleTransient: TautulliUtilities.integerToBoolean(
        json['stream_subtitle_transient'] as int),
  );
}

Map<String, dynamic> _$TautulliSessionToJson(TautulliSession instance) =>
    <String, dynamic>{
      'media_type': TautulliUtilities.mediaTypeToString(instance.mediaType),
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
      'duration':
          TautulliUtilities.durationToMillisecondsString(instance.duration),
      'year': TautulliUtilities.integerToString(instance.year),
      'thumb': instance.thumb,
      'parent_thumb': instance.parentThumb,
      'grandparent_thumb': instance.grandparentThumb,
      'art': instance.art,
      'banner': instance.banner,
      'originally_available_at': instance.originallyAvailableAt,
      'added_at':
          TautulliUtilities.dateTimeToMillisecondsString(instance.addedAt),
      'updated_at':
          TautulliUtilities.dateTimeToMillisecondsString(instance.updatedAt),
      'last_viewed_at':
          TautulliUtilities.dateTimeToMillisecondsString(instance.lastViewedAt),
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
      'video_resolution': instance.videoResolution,
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
      'video_codec_level': instance.videoCodecLevel,
      'video_bitrate': TautulliUtilities.integerToString(instance.videoBitrate),
      'video_bit_depth':
          TautulliUtilities.integerToString(instance.videoBitDepth),
      'video_chroma_subsampling': instance.videoChromaSubsampling,
      'video_color_primaries': instance.videoColorPrimaries,
      'video_color_range': instance.videoColorRange,
      'video_color_space': instance.videoColorSpace,
      'video_color_trc': instance.videoColorTRC,
      'video_frame_rate':
          TautulliUtilities.doubleToString(instance.videoFrameRate),
      'video_ref_frames':
          TautulliUtilities.integerToString(instance.videoRefFrames),
      'video_height': TautulliUtilities.integerToString(instance.videoHeight),
      'video_width': TautulliUtilities.integerToString(instance.videoWidth),
      'video_language': instance.videoLanguage,
      'video_language_code': instance.videoLanguageCode,
      'video_scan_type': instance.videoScanType,
      'video_dynamic_range': instance.videoDynamicRange,
      'audio_bitrate': TautulliUtilities.integerToString(instance.audioBitrate),
      'audio_bitrate_mode': instance.audioBitrateMode,
      'audio_sample_rate':
          TautulliUtilities.integerToString(instance.audioSampleRate),
      'audio_language': instance.audioLanguage,
      'audio_language_code': instance.audioLanguageCode,
      'subtitle_codec': instance.subtitleCodec,
      'subtitle_container': instance.subtitleContainer,
      'subtitle_format': instance.subtitleFormat,
      'subtitle_forced':
          TautulliUtilities.booleanToInteger(instance.subtitleForced),
      'subtitle_location': instance.subtitleLocation,
      'subtitle_language': instance.subtitleLanguage,
      'subtitle_language_code': instance.subtitleLanguageCode,
      'row_id': instance.rowId,
      'user_id': instance.userId,
      'username': instance.username,
      'friendly_name': instance.friendlyName,
      'user_thumb': instance.userThumb,
      'email': instance.email,
      'is_active': TautulliUtilities.booleanToInteger(instance.isActive),
      'is_admin': TautulliUtilities.booleanToInteger(instance.isAdmin),
      'is_home_user': TautulliUtilities.booleanToInteger(instance.isHomeUser),
      'is_allow_sync': TautulliUtilities.booleanToInteger(instance.isAllowSync),
      'is_restricted':
          TautulliUtilities.booleanToInteger(instance.isRestricted),
      'do_notify': TautulliUtilities.booleanToInteger(instance.doNotify),
      'keep_history': TautulliUtilities.booleanToInteger(instance.keepHistory),
      'deleted_user': TautulliUtilities.booleanToInteger(instance.deletedUser),
      'allow_guest': TautulliUtilities.booleanToInteger(instance.allowGuest),
      'shared_libraries':
          TautulliUtilities.integerListToStringList(instance.sharedLibraries),
      'ip_address': instance.ipAddress,
      'ip_address_public': instance.ipAddressPublic,
      'device': instance.device,
      'platform': instance.platform,
      'platform_name': instance.platformName,
      'platform_version': instance.platformVersion,
      'product': instance.product,
      'product_version': instance.productVersion,
      'profile': instance.profile,
      'player': instance.player,
      'machine_id': instance.machineId,
      'state': TautulliUtilities.sessionStateToString(instance.state),
      'local': TautulliUtilities.booleanToInteger(instance.local),
      'relayed': TautulliUtilities.booleanToInteger(instance.relayed),
      'secure': TautulliUtilities.booleanToInteger(instance.secure),
      'session_id': instance.sessionId,
      'bandwidth': TautulliUtilities.integerToString(instance.bandwidth),
      'location': TautulliUtilities.sessionLocationToString(instance.location),
      'transcode_key': instance.transcodeKey,
      'transcode_throttled':
          TautulliUtilities.booleanToInteger(instance.transcodeThrottled),
      'transcode_progress': instance.transcodeProgress,
      'transcode_speed':
          TautulliUtilities.doubleToString(instance.transcodeSpeed),
      'transcode_audio_channels':
          TautulliUtilities.integerToString(instance.transcodeAudioChannels),
      'transcode_audio_codec': instance.transcodeAudioCodec,
      'transcode_video_codec': instance.transcodeVideoCodec,
      'transcode_height':
          TautulliUtilities.integerToString(instance.transcodeHeight),
      'transcode_width':
          TautulliUtilities.integerToString(instance.transcodeWidth),
      'transcode_container': instance.transcodeContainer,
      'transcode_protocol': instance.transcodeProtocol,
      'transcode_hw_requested': TautulliUtilities.booleanToInteger(
          instance.transcodeHardwareRequested),
      'transcode_hw_decode': instance.transcodeHardwareDecode,
      'transcode_hw_decode_title': instance.transcodeHardwareDecodeTitle,
      'transcode_hw_encode': instance.transcodeHardwarEencode,
      'transcode_hw_encode_title': instance.transcodeHardwarEencodeTitle,
      'transcode_hw_full_pipeline': TautulliUtilities.booleanToInteger(
          instance.transcodeHardwareFullPipeline),
      'audio_decision':
          TautulliUtilities.transcodeDecisionToString(instance.audioDecision),
      'video_decision':
          TautulliUtilities.transcodeDecisionToString(instance.videoDecision),
      'subtitle_decision': TautulliUtilities.transcodeDecisionToString(
          instance.subtitleDecision),
      'throttled': TautulliUtilities.booleanToString(instance.throttled),
      'transcode_hw_decoding': TautulliUtilities.booleanToInteger(
          instance.transcodeHardwareDecoding),
      'transcode_hw_encoding': TautulliUtilities.booleanToInteger(
          instance.transcodeHardwareEncoding),
      'stream_container': instance.streamContainer,
      'stream_bitrate':
          TautulliUtilities.integerToString(instance.streamBitrate),
      'stream_aspect_ratio':
          TautulliUtilities.doubleToString(instance.streamAspectRatio),
      'stream_audio_codec': instance.streamAudioCodec,
      'stream_audio_channels':
          TautulliUtilities.integerToString(instance.streamAudioChannels),
      'stream_audio_channel_layout': instance.streamAudioChannelLayout,
      'stream_audio_channel_layout_': instance.streamAudioChannelLayout_,
      'stream_video_codec': instance.streamVideoCodec,
      'stream_video_resolution': instance.streamVideoResolution,
      'stream_video_framerate': instance.streamVideoFramerate,
      'stream_video_height':
          TautulliUtilities.integerToString(instance.streamVideoHeight),
      'stream_video_width':
          TautulliUtilities.integerToString(instance.streamVideoWidth),
      'stream_duration': TautulliUtilities.durationToMillisecondsString(
          instance.streamDuration),
      'stream_container_decision': TautulliUtilities.transcodeDecisionToString(
          instance.streamContainerDecision),
      'optimized_version_title': instance.optimizedVersionTitle,
      'synced_version':
          TautulliUtilities.booleanToInteger(instance.syncedVersion),
      'live_uuid': instance.liveUuid,
      'bif_thumb': instance.bifThumb,
      'transcode_decision': TautulliUtilities.transcodeDecisionToString(
          instance.transcodeDecision),
      'subtitles': TautulliUtilities.booleanToInteger(instance.subtitles),
      'stream_video_full_resolution': instance.streamVideoFullResolution,
      'stream_video_dynamic_range': instance.streamVideoDynamicRange,
      'stream_video_codec_level': instance.streamVideoCodecLevel,
      'stream_video_bitrate':
          TautulliUtilities.integerToString(instance.streamVideoBitrate),
      'stream_video_bit_depth':
          TautulliUtilities.integerToString(instance.streamVideoBitDepth),
      'stream_video_chroma_subsampling': instance.streamVideoChromaSubsampling,
      'stream_video_color_primaries': instance.streamVideoColorPrimaries,
      'stream_video_color_range': instance.streamVideoColorRange,
      'stream_video_color_space': instance.streamVideoColorSpace,
      'stream_video_color_trc': instance.streamVideoColorTRC,
      'stream_video_ref_frames':
          TautulliUtilities.integerToString(instance.streamVideoRefFrames),
      'stream_video_language': instance.streamVideoLanguage,
      'stream_video_language_code': instance.streamVideoLanguageCode,
      'stream_video_scan_type': instance.streamVideoScanType,
      'stream_video_decision': TautulliUtilities.transcodeDecisionToString(
          instance.streamVideoDecision),
      'stream_audio_bitrate':
          TautulliUtilities.integerToString(instance.streamAudioBitrate),
      'stream_audio_bitrate_mode': instance.streamAudioBitrateMode,
      'stream_audio_sample_rate':
          TautulliUtilities.integerToString(instance.streamAudioSampleRate),
      'stream_audio_language': instance.streamAudioLanguage,
      'stream_audio_language_code': instance.streamAudioLanguageCode,
      'stream_audio_decision': TautulliUtilities.transcodeDecisionToString(
          instance.streamAudioDecision),
      'stream_subtitle_codec': instance.streamSubtitleCodec,
      'stream_subtitle_container': instance.streamSubtitleContainer,
      'stream_subtitle_format': instance.streamSubtitleFormat,
      'stream_subtitle_forced':
          TautulliUtilities.booleanToInteger(instance.streamSubtitleForced),
      'stream_subtitle_location': instance.streamSubtitleLocation,
      'stream_subtitle_language': instance.streamSubtitleLanguage,
      'stream_subtitle_language_code': instance.streamSubtitleLanguageCode,
      'stream_subtitle_transient':
          TautulliUtilities.booleanToInteger(instance.streamSubtitleTransient),
      'stream_subtitle_decision': TautulliUtilities.transcodeDecisionToString(
          instance.streamSubtitleDecision),
    };
