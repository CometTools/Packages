import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/utilities.dart';
import 'package:tautulli/types.dart';

part 'session.g.dart';

/// Model for a single activity session in Tautulli.
@JsonSerializable()
class TautulliSession {
    /// Type of media in this session.
    @JsonKey(name: 'media_type', toJson: _mediaTypeToString, fromJson: _mediaTypeToObject)
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

    /// Duration of the content, in milliseconds.
    @JsonKey(name: 'duration', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int duration;

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
    /// Because of the custom formatting options, the DateTime is returned as a string.
    /// You can use the miscellaneous call `getDateFormats()` to pull the date and time formatting strings.
    @JsonKey(name: 'originally_available_at')
    final String originallyAvailableAt;

    /// The date on which the content was added to Plex.
    /// This is typically read/stored as the file creation date within Plex.
    @JsonKey(name: 'added_at', toJson: TautulliUtilities.dateTimeToStringMilliseconds, fromJson: TautulliUtilities.millisecondsStringToDateTime)
    final DateTime addedAt;

    /// The date on which the content was last updated on Plex.
    @JsonKey(name: 'updated_at', toJson: TautulliUtilities.dateTimeToStringMilliseconds, fromJson: TautulliUtilities.millisecondsStringToDateTime)
    final DateTime updatedAt;

    /// The date on which the content was last viewed on Plex.
    @JsonKey(name: 'last_viewed_at', toJson: TautulliUtilities.dateTimeToStringMilliseconds, fromJson: TautulliUtilities.millisecondsStringToDateTime)
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
    @JsonKey(name: 'video_resolution', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoResolution;

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
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /** JSON (De)Serialization Related */

    factory TautulliSession.fromJson(Map<String, dynamic> json) => _$TautulliSessionFromJson(json);
    Map<String, dynamic> toJson() => _$TautulliSessionToJson(this);

    static TautulliMediaType _mediaTypeToObject(String type) => TautulliMediaType.MOVIE.from(type);
    static String _mediaTypeToString(TautulliMediaType type) => type?.value ?? '';
}
