import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/utilities.dart';
import 'package:tautulli/types.dart';

part 'session.g.dart';

/// Model for a single activity session in Tautulli.
@JsonSerializable()
class TautulliSession {
    /// Type of media in this session.
    @JsonKey(name: 'media_type', toJson: TautulliUtilities.mediaTypeToString, fromJson: TautulliUtilities.mediaTypeToObject)
    final TautulliMediaType mediaType;

    /// Session's key/identifier.
    @JsonKey(name: 'session_key', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int sessionKey;

    /// _Unknown_: Somehow related to the progress percentage.
    @JsonKey(name: 'view_offset', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int viewOffset;

    /// How much of the content has been played.
    @JsonKey(name: 'progress_percent', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int progressPercent;

    /// Quality profile of the stream.
    @JsonKey(name: 'quality_profile')
    final String qualityProfile;

    /// Quality of the synced version of the content.
    @JsonKey(name: 'synced_version_profile')
    final String syncedVersionProfile;

    /// Quality of the optimized version of the content.
    @JsonKey(name: 'optimized_version_profile')
    final String optimizedVersionProfile;

    /// The user streaming the content.
    @JsonKey(name: 'user')
    final String user;

    /// _Unknown_: Likely related to live TV streams.
    @JsonKey(name: 'channel_stream')
    final int channelStream;

    /// Plex section ID the content belongs to.
    @JsonKey(name: 'section_id', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int sectionId;

    /// Name of the Plex library that the content belongs to.
    @JsonKey(name: 'library_name')
    final String libraryName;

    /// The content's unique ID from Plex.
    @JsonKey(name: 'rating_key', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int ratingKey;

    /// The content's parent's unique ID from Plex.
    @JsonKey(name: 'parent_rating_key', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int parentRatingKey;

    /// The content's grandparent's unique ID from Plex.
    @JsonKey(name: 'grandparent_rating_key', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int grandparentRatingKey;

    /// Title of the content.
    @JsonKey(name: 'title')
    final String title;

    /// Title of the parent of the content.
    @JsonKey(name: 'parent_title')
    final String parentTitle;

    /// Title of the grandparent of the content.
    @JsonKey(name: 'grandparent_title')
    final String grandparentTitle;

    /// The original title of the content.
    @JsonKey(name: 'original_title')
    final String originalTitle;

    /// The sort title of the content (if different from the title).
    @JsonKey(name: 'sort_title')
    final String sortTitle;

    /// The index of the content with respect to its parent (for example, track number in an album).
    @JsonKey(name: 'media_index', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int mediaIndex;

    /// The index of the parent of the content.
    @JsonKey(name: 'parent_media_index', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int parentMediaIndex;

    /// The studio that made the content.
    @JsonKey(name: 'studio')
    final String studio;

    /// The content rating for the content.
    @JsonKey(name: 'content_rating')
    final String contentRating;

    /// The summary of the content.
    @JsonKey(name: 'summary')
    final String summary;

    /// The tagline of the content.
    @JsonKey(name: 'tagline')
    final String tagline;

    /// The critic rating of the content.
    @JsonKey(name: 'rating', toJson: TautulliUtilities.doubleToString, fromJson: TautulliUtilities.stringToDouble)
    final double rating;

    /// Link to an image for the critic rating.
    @JsonKey(name: 'rating_image')
    final String ratingImage;

    /// The audience rating of the content.
    @JsonKey(name: 'audience_rating', toJson: TautulliUtilities.doubleToString, fromJson: TautulliUtilities.stringToDouble)
    final double audienceRating;

    /// Link to an image for the audience rating.
    @JsonKey(name: 'audience_rating_image')
    final String audienceRatingImage;

    /// The user rating of the content.
    @JsonKey(name: 'user_rating', toJson: TautulliUtilities.doubleToString, fromJson: TautulliUtilities.stringToDouble)
    final double userRating;

    /// Duration of the content.
    @JsonKey(name: 'duration', toJson: TautulliUtilities.durationToMillisecondsString, fromJson: TautulliUtilities.millisecondsStringToDuration)
    final Duration duration;

    /// Year the content was released.
    @JsonKey(name: 'year', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int year;

    /// Thumbnail path for the content.
    @JsonKey(name: 'thumb')
    final String thumb;

    /// Thumbnail path for the content's parent.
    @JsonKey(name: 'parent_thumb')
    final String parentThumb;

    /// Thumbnail path for the content's grandparent.
    @JsonKey(name: 'grandparent_thumb')
    final String grandparentThumb;

    /// Artwork path for the content.
    @JsonKey(name: 'art')
    final String art;

    /// Banner path for the content.
    @JsonKey(name: 'banner')
    final String banner;

    /// The date on which the content was originally available on.
    /// 
    /// Because of the custom formatting options, the DateTime is returned as a string.
    /// You can use the miscellaneous call `getDateFormats()` to pull the date and time formatting strings.
    @JsonKey(name: 'originally_available_at')
    final String originallyAvailableAt;

    /// The date on which the content was added to Plex.
    /// This is typically read/stored as the file creation date within Plex.
    @JsonKey(name: 'added_at', toJson: TautulliUtilities.dateTimeToMillisecondsString, fromJson: TautulliUtilities.millisecondsStringToDateTime)
    final DateTime addedAt;

    /// The date on which the content was last updated on Plex.
    @JsonKey(name: 'updated_at', toJson: TautulliUtilities.dateTimeToMillisecondsString, fromJson: TautulliUtilities.millisecondsStringToDateTime)
    final DateTime updatedAt;

    /// The date on which the content was last viewed on Plex.
    @JsonKey(name: 'last_viewed_at', toJson: TautulliUtilities.dateTimeToMillisecondsString, fromJson: TautulliUtilities.millisecondsStringToDateTime)
    final DateTime lastViewedAt;

    /// The globally unique identifier for the content.
    @JsonKey(name: 'guid')
    final String guid;

    /// The globally unique identifier for the content's parent.
    @JsonKey(name: 'parent_guid')
    final String parentGuid;

    /// The globally unique identifier for the content's grandparent.
    @JsonKey(name: 'grandparent_guid')
    final String grandparentGuid;

    /// List of director's names who directed the content.
    @JsonKey(name: 'directors')
    final List<String> directors;

    /// List of writer's names who wrote the content.
    @JsonKey(name: 'writers')
    final List<String> writers;

    /// List of actors's names who acted in the content.
    @JsonKey(name: 'actors')
    final List<String> actors;

    /// List of genres of the content.
    @JsonKey(name: 'genres')
    final List<String> genres;

    /// List of labels that have been attached on Plex.
    @JsonKey(name: 'labels')
    final List<String> labels;

    /// List of collections the content is apart of on Plex.
    @JsonKey(name: 'collections')
    final List<String> collections;

    /// The full title of the content.
    @JsonKey(name: 'full_title')
    final String fullTitle;

    /// The amount of children this content has.
    @JsonKey(name: 'children_count')
    final int childrenCount;

    /// Is this session live content?
    @JsonKey(name: 'live', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool live;

    /// The ID of the content.
    @JsonKey(name: 'id', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int id;

    /// The media container type of the content.
    @JsonKey(name: 'container')
    final String container;

    /// Bitrate of the content.
    @JsonKey(name: 'bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int bitrate;

    /// Height in pixels.
    @JsonKey(name: 'height', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int height;

    /// Width in pixels.
    @JsonKey(name: 'width', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int width;

    /// Aspect ratio of the content.
    @JsonKey(name: 'aspect_ratio', toJson: TautulliUtilities.doubleToString, fromJson: TautulliUtilities.stringToDouble)
    final double aspectRatio;

    /// Codec of the video stream.
    @JsonKey(name: 'video_codec')
    final String videoCodec;

    /// Resolution of the video stream.
    @JsonKey(name: 'video_resolution')
    final String videoResolution;

    /// Full resoltuion of the video stream.
    @JsonKey(name: 'video_full_resolution')
    final String videoFullResolution;

    /// Framerate of the video stream.
    @JsonKey(name: 'video_framerate')
    final String videoFramerate;

    /// Profile of the video stream.
    @JsonKey(name: 'video_profile')
    final String videoProfile;

    /// Codec of the audio stream.
    @JsonKey(name: 'audio_codec')
    final String audioCodec;

    /// Number of channels in the audio stream.
    @JsonKey(name: 'audio_channels', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int audioChannels;

    /// The layout of the channels in the audio stream.
    @JsonKey(name: 'audio_channel_layout')
    final String audioChannelLayout;

    /// Profile of the audio stream.
    @JsonKey(name: 'audio_profile')
    final String audioProfile;

    /// Is this session using an optimized version?
    @JsonKey(name: 'optimized_version', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool optimizedVersion;

    /// The channel's callsign for live content.
    @JsonKey(name: 'channel_call_sign')
    final String channelCallSign;

    /// The channel's identifier for live content.
    @JsonKey(name: 'channel_identifier')
    final String channelIdentifier;

    /// The channel's thumbnail for live content.
    @JsonKey(name: 'channel_thumb')
    final String channelThumb;

    /// The path to the file on your system.
    @JsonKey(name: 'file')
    final String file;

    /// The size of the file, in bytes.
    @JsonKey(name: 'file_size', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int fileSize;

    /// Does the file have generated index files? 
    @JsonKey(name: 'indexes', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool indexes;

    /// _Unknown_
    @JsonKey(name: 'selected', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool selected;

    /// _Unknown_
    @JsonKey(name: 'type', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int type;

    /// Codec level of the video stream.
    @JsonKey(name: 'video_codec_level')
    final String videoCodecLevel;

    /// Bitrate of the video stream.
    @JsonKey(name: 'video_bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoBitrate;

    /// Bit depth of the video stream.
    @JsonKey(name: 'video_bit_depth', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoBitDepth;

    /// Chroma subsampling of the video stream.
    @JsonKey(name: 'video_chroma_subsampling')
    final String videoChromaSubsampling;

    /// Color primaries of the video stream.
    @JsonKey(name: 'video_color_primaries')
    final String videoColorPrimaries;

    /// Color range of the video stream.
    @JsonKey(name: 'video_color_range')
    final String videoColorRange;

    /// Color space of the video stream.
    @JsonKey(name: 'video_color_space')
    final String videoColorSpace;

    /// Color TRC of the video stream.
    @JsonKey(name: 'video_color_trc')
    final String videoColorTRC;

    /// Frame rate of the video stream.
    @JsonKey(name: 'video_frame_rate', toJson: TautulliUtilities.doubleToString, fromJson: TautulliUtilities.stringToDouble)
    final double videoFrameRate;

    /// Reference frames in the video stream.
    @JsonKey(name: 'video_ref_frames', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoRefFrames;

    /// Height in pixels of the video stream.
    @JsonKey(name: 'video_height', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoHeight;

    /// Width in pixels of the video stream.
    @JsonKey(name: 'video_width', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoWidth;

    /// Language of the video stream.
    @JsonKey(name: 'video_language')
    final String videoLanguage;

    /// Language code of the video stream.
    @JsonKey(name: 'video_language_code')
    final String videoLanguageCode;

    /// Scan type of the video stream.
    @JsonKey(name: 'video_scan_type')
    final String videoScanType;

    /// Dynamic range of the video stream.
    @JsonKey(name: 'video_dynamic_range')
    final String videoDynamicRange;
    
    /// Bitrate of the audio stream.
    @JsonKey(name: 'audio_bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int audioBitrate;

    /// Bitrate mode of the audio stream.
    @JsonKey(name: 'audio_bitrate_mode')
    final String audioBitrateMode;

    /// Sample rate of the audio stream.
    @JsonKey(name: 'audio_sample_rate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int audioSampleRate;

    /// Language of the audio stream.
    @JsonKey(name: 'audio_language')
    final String audioLanguage;

    /// Language code of the audio stream.
    @JsonKey(name: 'audio_language_code')
    final String audioLanguageCode;

    /// Codec of the subtitle stream.
    @JsonKey(name: 'subtitle_codec')
    final String subtitleCodec;

    /// Container of the subtitle stream.
    @JsonKey(name: 'subtitle_container')
    final String subtitleContainer;

    /// Format of the subtitle stream.
    @JsonKey(name: 'subtitle_format')
    final String subtitleFormat;

    /// Is the subtitle stream forced?
    @JsonKey(name: 'subtitle_forced', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool subtitleForced;

    /// Location of the subtitle stream.
    @JsonKey(name: 'subtitle_location')
    final String subtitleLocation;

    /// Language of the subtitle stream.
    @JsonKey(name: 'subtitle_language')
    final String subtitleLanguage;

    /// Language code of the subtitle stream.
    @JsonKey(name: 'subtitle_language_code')
    final String subtitleLanguageCode;

    /// Row identifier of the streaming user.
    @JsonKey(name: 'row_id')
    final int rowId;

    /// User identifier of the streaming user. 
    @JsonKey(name: 'user_id')
    final int userId;

    /// Username of the streaming user.
    @JsonKey(name: 'username')
    final String username;

    /// Friendly name of the streaming user.
    @JsonKey(name: 'friendly_name')
    final String friendlyName;

    /// Thumbnail link of the streaming user.
    @JsonKey(name: 'user_thumb')
    final String userThumb;

    /// Email of the streaming user.
    @JsonKey(name: 'email')
    final String email;

    /// Is the user active?
    @JsonKey(name: 'is_active', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isActive;

    /// Is the user an admin?
    @JsonKey(name: 'is_admin', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isAdmin;

    /// Is the user a home user?
    @JsonKey(name: 'is_home_user', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isHomeUser;

    /// Is the user allowed to sync content?
    @JsonKey(name: 'is_allow_sync', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isAllowSync;

    /// Is the user restricted?
    @JsonKey(name: 'is_restricted', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isRestricted;

    /// Does the user get notified?
    @JsonKey(name: 'do_notify', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool doNotify;

    /// Is history enabled for the user?
    @JsonKey(name: 'keep_history', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool keepHistory;

    /// Is the user deleted?
    @JsonKey(name: 'deleted_user', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool deletedUser;

    /// Allow guest?
    @JsonKey(name: 'allow_guest', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool allowGuest;

    /// List of libraries that are shared with this user.
    @JsonKey(name: 'shared_libraries', toJson: TautulliUtilities.integerListToStringList, fromJson: TautulliUtilities.stringListToIntegerList)
    final List<int> sharedLibraries;

    /// IP address of the streaming device.
    @JsonKey(name: 'ip_address')
    final String ipAddress;

    /// Public IP address of the streaming device.
    @JsonKey(name: 'ip_address_public')
    final String ipAddressPublic;

    /// Streaming device name.
    @JsonKey(name: 'device')
    final String device;

    /// Platform of the streaming device.
    @JsonKey(name: 'platform')
    final String platform;

    /// Name of the streaming device.
    @JsonKey(name: 'platform_name')
    final String platformName;

    /// Version of the streaming device.
    @JsonKey(name: 'platform_version')
    final String platformVersion;

    /// Plex product name on the streaming device.
    @JsonKey(name: 'product')
    final String product;

    /// Plex product version on the streaming device.
    @JsonKey(name: 'product_version')
    final String productVersion;

    /// Plex profile on the streaming device. 
    @JsonKey(name: 'profile')
    final String profile;

    /// Name of the streaming device/player.
    @JsonKey(name: 'player')
    final String player;

    /// Unique machine identifier key.
    @JsonKey(name: 'machine_id')
    final String machineId;

    /// Current state of the session.
    @JsonKey(name: 'state', toJson: TautulliUtilities.sessionStateToString, fromJson: TautulliUtilities.sessionStateToObject)
    final TautulliSessionState state;

    /// Is it a local stream?
    @JsonKey(name: 'local', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool local;

    /// Is it a relayed stream?
    @JsonKey(name: 'relayed', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool relayed;

    /// Is it a secure stream?
    @JsonKey(name: 'secure', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool secure;

    /// Session ID of the stream.
    @JsonKey(name: 'session_id')
    final String sessionId;

    /// The total bandwidth usage of the session.
    @JsonKey(name: 'bandwidth', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int bandwidth;

    /// Location of the stream session (LAN or WAN).
    @JsonKey(name: 'location', toJson: TautulliUtilities.sessionLocationToString, fromJson: TautulliUtilities.sessionLocationToObject)
    final TautulliSessionLocation location;

    /// Transcoder key/identifier for the session.
    @JsonKey(name: 'transcode_key')
    final String transcodeKey;

    /// Is the transcoder throttled?
    @JsonKey(name: 'transcode_throttled', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool transcodeThrottled;

    /// Progress of the transcoder for the session.
    @JsonKey(name: 'transcode_progress')
    final int transcodeProgress;

    /// Transcoder speed for the session.
    @JsonKey(name: 'transcode_speed', toJson: TautulliUtilities.doubleToString, fromJson: TautulliUtilities.stringToDouble)
    final double transcodeSpeed;

    /// Number of audio channels in the transcode stream.
    @JsonKey(name: 'transcode_audio_channels', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int transcodeAudioChannels;

    /// Audio codec of the transcode stream.
    @JsonKey(name: 'transcode_audio_codec')
    final String transcodeAudioCodec;

    /// Video codec of the transcode stream.
    @JsonKey(name: 'transcode_video_codec')
    final String transcodeVideoCodec;

    /// Height in pixels of the video in the transcode stream.
    @JsonKey(name: 'transcode_height', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int transcodeHeight;

    /// Width in pixels of the video in the transcode stream.
    @JsonKey(name: 'transcode_width', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int transcodeWidth;

    /// Container used for the transcode stream.
    @JsonKey(name: 'transcode_container')
    final String transcodeContainer;

    /// Protocol used to transmit the transcode stream.
    @JsonKey(name: 'transcode_protocol')
    final String transcodeProtocol;

    /// Did the transcoder request hardware acceleration?
    @JsonKey(name: 'transcode_hw_requested', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool transcodeHardwareRequested;

    /// Hardware decode of the transcode stream.
    @JsonKey(name: 'transcode_hw_decode')
    final String transcodeHardwareDecode;

    /// Hardware decode title of the transcode stream.
    @JsonKey(name: 'transcode_hw_decode_title')
    final String transcodeHardwareDecodeTitle;

    /// Hardware encode of the transcode stream.
    @JsonKey(name: 'transcode_hw_encode')
    final String transcodeHardwarEencode;

    /// Hardware encode title of the transcode stream.
    @JsonKey(name: 'transcode_hw_encode_title')
    final String transcodeHardwarEencodeTitle;

    /// Is the transcoder using hardware acceleration for the full pipeline?
    @JsonKey(name: 'transcode_hw_full_pipeline', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool transcodeHardwareFullPipeline;

    /// What decision was made on how to handle the audio stream.
    @JsonKey(name: 'audio_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision audioDecision;

    /// What decision was made on how to handle the video stream.
    @JsonKey(name: 'video_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision videoDecision;

    /// What decision was made on how to handle the subtitle stream.
    @JsonKey(name: 'subtitle_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision subtitleDecision;

    /// Is the transcoder throttled?
    @JsonKey(name: 'throttled', toJson: TautulliUtilities.booleanToString, fromJson: TautulliUtilities.stringToBoolean)
    final bool throttled;

    /// Is the transcoder using hardware acceleration for decoding?
    @JsonKey(name: 'transcode_hw_decoding', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool transcodeHardwareDecoding;

    /// Is the transcoder using hardware acceleration for encoding?
    @JsonKey(name: 'transcode_hw_encoding', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool transcodeHardwareEncoding;

    /// Container used for the final stream.
    @JsonKey(name: 'stream_container')
    final String streamContainer;

    /// Bitrate of the final stream.
    @JsonKey(name: 'stream_bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamBitrate;

    /// Aspect ratio of the final video stream.
    @JsonKey(name: 'stream_aspect_ratio', toJson: TautulliUtilities.doubleToString, fromJson: TautulliUtilities.stringToDouble)
    final double streamAspectRatio;

    /// Codec of the final audio stream.
    @JsonKey(name: 'stream_audio_codec')
    final String streamAudioCodec;

    /// Number of channels in the final audio stream.
    @JsonKey(name: 'stream_audio_channels', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamAudioChannels;

    /// The layout of the channels in the final audio stream.
    @JsonKey(name: 'stream_audio_channel_layout')
    final String streamAudioChannelLayout;

    /// The layout of the channels in the final audio stream. Unsure how this is different from [streamAudioChannelLayout].
    @JsonKey(name: 'stream_audio_channel_layout_')
    final String streamAudioChannelLayout_;

    /// Codec of the final video stream.
    @JsonKey(name: 'stream_video_codec')
    final String streamVideoCodec;

    /// Resolution of the final video stream.
    @JsonKey(name: 'stream_video_resolution')
    final String streamVideoResolution;

    /// Framerate of the final video stream.
    @JsonKey(name: 'stream_video_framerate')
    final String streamVideoFramerate;

    /// Height in pixels of the final video stream.
    @JsonKey(name: 'stream_video_height', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamVideoHeight;

    /// Width in pixels of the final video stream.
    @JsonKey(name: 'stream_video_width', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamVideoWidth;

    /// Duration of the final stream.
    @JsonKey(name: 'stream_duration', toJson: TautulliUtilities.durationToMillisecondsString, fromJson: TautulliUtilities.millisecondsStringToDuration)
    final Duration streamDuration;

    /// What decision was made on how to handle the final container of the stream.
    @JsonKey(name: 'stream_container_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision streamContainerDecision;

    /// Optimized version title.
    @JsonKey(name: 'optimized_version_title')
    final String optimizedVersionTitle;

    /// Is the stream a synced version of the content?
    @JsonKey(name: 'synced_version', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool syncedVersion;

    /// UUID of the live stream session.
    @JsonKey(name: 'live_uuid')
    final String liveUuid;

    /// Location of the content's BIF thumbnail
    @JsonKey(name: 'bif_thumb')
    final String bifThumb;

    /// What decision was made on how to handle the content.
    @JsonKey(name: 'transcode_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision transcodeDecision;

    /// Are subtitles being used for this session?
    @JsonKey(name: 'subtitles', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool subtitles;

    /// Full resoltuion of the final video stream.
    @JsonKey(name: 'stream_video_full_resolution')
    final String streamVideoFullResolution;

    /// Dynamic range of the final video stream.
    @JsonKey(name: 'stream_video_dynamic_range')
    final String streamVideoDynamicRange;

    /// Codec level of the final video stream.
    @JsonKey(name: 'stream_video_codec_level')
    final String streamVideoCodecLevel;

    /// Bitrate of the final video stream.
    @JsonKey(name: 'stream_video_bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamVideoBitrate;

    /// Bit depth of the final video stream.
    @JsonKey(name: 'stream_video_bit_depth', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamVideoBitDepth;

    /// Chroma subsampling of the final video stream.
    @JsonKey(name: 'stream_video_chroma_subsampling')
    final String streamVideoChromaSubsampling;

    /// Color primaries of the final video stream.
    @JsonKey(name: 'stream_video_color_primaries')
    final String streamVideoColorPrimaries;

    /// Color range of the final video stream.
    @JsonKey(name: 'stream_video_color_range')
    final String streamVideoColorRange;

    /// Color space of the final video stream.
    @JsonKey(name: 'stream_video_color_space')
    final String streamVideoColorSpace;

    /// Color TRC of the final video stream.
    @JsonKey(name: 'stream_video_color_trc')
    final String streamVideoColorTRC;

    /// Reference frames in the final video stream.
    @JsonKey(name: 'stream_video_ref_frames', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamVideoRefFrames;

    /// Language of the final video stream.
    @JsonKey(name: 'stream_video_language')
    final String streamVideoLanguage;

    /// Language code of the final video stream.
    @JsonKey(name: 'stream_video_language_code')
    final String streamVideoLanguageCode;

    /// Scan type of the final video stream.
    @JsonKey(name: 'stream_video_scan_type')
    final String streamVideoScanType;

    /// What decision was made on how to handle the final video stream.
    @JsonKey(name: 'stream_video_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision streamVideoDecision;

    /// Bitrate of the final audio stream.
    @JsonKey(name: 'stream_audio_bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamAudioBitrate;

    /// Bitrate mode of the final audio stream.
    @JsonKey(name: 'stream_audio_bitrate_mode')
    final String streamAudioBitrateMode;

    /// Sample rate of the final audio stream.
    @JsonKey(name: 'stream_audio_sample_rate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int streamAudioSampleRate;

    /// Language of the final audio stream.
    @JsonKey(name: 'stream_audio_language')
    final String streamAudioLanguage;

    /// Language code of the final audio stream.
    @JsonKey(name: 'stream_audio_language_code')
    final String streamAudioLanguageCode;

    /// What decision was made on how to handle the final video stream.
    @JsonKey(name: 'stream_audio_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision streamAudioDecision;

    /// Codec of the final subtitle stream.
    @JsonKey(name: 'stream_subtitle_codec')
    final String streamSubtitleCodec;

    /// Container of the final subtitle stream.
    @JsonKey(name: 'stream_subtitle_container')
    final String streamSubtitleContainer;

    /// Format of the final subtitle stream.
    @JsonKey(name: 'stream_subtitle_format')
    final String streamSubtitleFormat;

    /// Is the final subtitle stream forced?
    @JsonKey(name: 'stream_subtitle_forced', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool streamSubtitleForced;

    /// Location of the final subtitle stream.
    @JsonKey(name: 'stream_subtitle_location')
    final String streamSubtitleLocation;

    /// Language of the final subtitle stream.
    @JsonKey(name: 'stream_subtitle_language')
    final String streamSubtitleLanguage;

    /// Language code of the final subtitle stream.
    @JsonKey(name: 'stream_subtitle_language_code')
    final String streamSubtitleLanguageCode;

    /// Is the final subtitle stream transient?
    @JsonKey(name: 'stream_subtitle_transient', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool streamSubtitleTransient;

    /// What decision was made on how to handle the final subtitle stream.
    @JsonKey(name: 'stream_subtitle_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision streamSubtitleDecision;

    TautulliSession({
        this.sessionKey,
        this.mediaType,
        this.viewOffset,
        this.progressPercent,
        this.qualityProfile,
        this.syncedVersionProfile,
        this.optimizedVersionProfile,
        this.user,
        this.channelStream,
        this.sectionId,
        this.libraryName,
        this.ratingKey,
        this.parentRatingKey,
        this.grandparentRatingKey,
        this.title,
        this.parentTitle,
        this.grandparentTitle,
        this.originalTitle,
        this.sortTitle,
        this.mediaIndex,
        this.parentMediaIndex,
        this.studio,
        this.contentRating,
        this.summary,
        this.tagline,
        this.rating,
        this.ratingImage,
        this.audienceRating,
        this.audienceRatingImage,
        this.userRating,
        this.duration,
        this.year,
        this.thumb,
        this.parentThumb,
        this.grandparentThumb,
        this.art,
        this.banner,
        this.originallyAvailableAt,
        this.addedAt,
        this.updatedAt,
        this.lastViewedAt,
        this.guid,
        this.parentGuid,
        this.grandparentGuid,
        this.directors,
        this.actors,
        this.writers,
        this.genres,
        this.labels,
        this.collections,
        this.fullTitle,
        this.childrenCount,
        this.live,
        this.id,
        this.container,
        this.bitrate,
        this.height,
        this.width,
        this.aspectRatio,
        this.videoCodec,
        this.videoResolution,
        this.videoFullResolution,
        this.videoFramerate,
        this.videoProfile,
        this.audioCodec,
        this.audioChannels,
        this.audioChannelLayout,
        this.audioProfile,
        this.optimizedVersion,
        this.channelCallSign,
        this.channelIdentifier,
        this.channelThumb,
        this.file,
        this.fileSize,
        this.indexes,
        this.selected,
        this.type,
        this.videoCodecLevel,
        this.videoBitrate,
        this.videoBitDepth,
        this.videoChromaSubsampling,
        this.videoColorPrimaries,
        this.videoColorRange,
        this.videoColorSpace,
        this.videoColorTRC,
        this.videoFrameRate,
        this.videoRefFrames,
        this.videoHeight,
        this.videoWidth,
        this.videoLanguage,
        this.videoLanguageCode,
        this.videoDynamicRange,
        this.videoScanType,
        this.audioBitrate,
        this.audioBitrateMode,
        this.audioSampleRate,
        this.audioLanguage,
        this.audioLanguageCode,
        this.subtitleCodec,
        this.subtitleContainer,
        this.subtitleFormat,
        this.subtitleForced,
        this.subtitleLanguage,
        this.subtitleLanguageCode,
        this.subtitleLocation,
        this.rowId,
        this.userId,
        this.username,
        this.friendlyName,
        this.userThumb,
        this.email,
        this.isActive,
        this.isAdmin,
        this.isHomeUser,
        this.isAllowSync,
        this.isRestricted,
        this.doNotify,
        this.keepHistory,
        this.deletedUser,
        this.allowGuest,
        this.sharedLibraries,
        this.ipAddress,
        this.ipAddressPublic,
        this.device,
        this.platform,
        this.platformName,
        this.platformVersion,
        this.product,
        this.productVersion,
        this.profile,
        this.player,
        this.machineId,
        this.state,
        this.local,
        this.relayed,
        this.secure,
        this.sessionId,
        this.bandwidth,
        this.location,
        this.transcodeKey,
        this.transcodeThrottled,
        this.transcodeProgress,
        this.transcodeSpeed,
        this.transcodeAudioChannels,
        this.transcodeAudioCodec,
        this.transcodeVideoCodec,
        this.transcodeWidth,
        this.transcodeHeight,
        this.transcodeContainer,
        this.transcodeProtocol,
        this.transcodeHardwareRequested,
        this.transcodeHardwareDecode,
        this.transcodeHardwareDecodeTitle,
        this.transcodeHardwarEencode,
        this.transcodeHardwarEencodeTitle,
        this.transcodeHardwareFullPipeline,
        this.audioDecision,
        this.videoDecision,
        this.subtitleDecision,
        this.throttled,
        this.transcodeHardwareDecoding,
        this.transcodeHardwareEncoding,
        this.streamContainer,
        this.streamBitrate,
        this.streamAspectRatio,
        this.streamAudioCodec,
        this.streamAudioChannels,
        this.streamAudioChannelLayout,
        this.streamAudioChannelLayout_,
        this.streamVideoCodec,
        this.streamVideoFramerate,
        this.streamVideoResolution,
        this.streamVideoHeight,
        this.streamVideoWidth,
        this.streamDuration,
        this.streamContainerDecision,
        this.optimizedVersionTitle,
        this.syncedVersion,
        this.liveUuid,
        this.bifThumb,
        this.transcodeDecision,
        this.subtitles,
        this.streamVideoFullResolution,
        this.streamVideoDynamicRange,
        this.streamVideoBitDepth,
        this.streamVideoBitrate,
        this.streamVideoChromaSubsampling,
        this.streamVideoCodecLevel,
        this.streamVideoColorPrimaries,
        this.streamVideoColorRange,
        this.streamVideoColorSpace,
        this.streamVideoColorTRC,
        this.streamVideoRefFrames,
        this.streamVideoDecision,
        this.streamVideoLanguage,
        this.streamVideoLanguageCode,
        this.streamVideoScanType,
        this.streamAudioBitrate,
        this.streamAudioBitrateMode,
        this.streamAudioDecision,
        this.streamAudioLanguage,
        this.streamAudioLanguageCode,
        this.streamAudioSampleRate,
        this.streamSubtitleCodec,
        this.streamSubtitleContainer,
        this.streamSubtitleDecision,
        this.streamSubtitleForced,
        this.streamSubtitleFormat,
        this.streamSubtitleLanguage,
        this.streamSubtitleLanguageCode,
        this.streamSubtitleLocation,
        this.streamSubtitleTransient,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliSession] object.
    factory TautulliSession.fromJson(Map<String, dynamic> json) => _$TautulliSessionFromJson(json);
    /// Serialize a [TautulliSession] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliSessionToJson(this);
}
