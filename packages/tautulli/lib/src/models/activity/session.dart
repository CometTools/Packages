import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/models.dart';
import 'package:tautulli/types.dart';

part 'session.g.dart';

/// Model for a single activity session in Tautulli.
@JsonSerializable()
class TautulliSession {
    /// Type of media in this session.
    @JsonKey(name: 'media_type', toJson: _mediaTypeToString, fromJson: _mediaTypeToObject)
    final TautulliMediaType mediaType;

    /// Session's key/identifier.
    @JsonKey(name: 'session_key', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
    final int sessionKey;

    /// _Unknown_: Somehow related to the progress percentage.
    @JsonKey(name: 'view_offset', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
    final int viewOffset;

    /// How much of the content has been played.
    @JsonKey(name: 'progress_percent', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
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
    @JsonKey(name: 'section_id', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
    final int sectionId;

    /// Name of the Plex library that the content belongs to.
    @JsonKey(name: 'library_name')
    final String libraryName;

    /// The content's unique ID from Plex.
    @JsonKey(name: 'rating_key', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
    final int ratingKey;

    /// The content's parent's unique ID from Plex.
    @JsonKey(name: 'parent_rating_key', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
    final int parentRatingKey;

    /// The content's grandparent's unique ID from Plex.
    @JsonKey(name: 'grandparent_rating_key', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
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
    @JsonKey(name: 'media_index', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
    final int mediaIndex;

    /// The index of the parent of the content.
    @JsonKey(name: 'parent_media_index', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
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
    @JsonKey(name: 'rating', toJson: TautulliModelUtilities.doubleToString, fromJson: TautulliModelUtilities.stringToDouble)
    final double rating;

    /// Link to an image for the critic rating.
    @JsonKey(name: 'rating_image')
    final String ratingImage;

    /// The audience rating of the content.
    @JsonKey(name: 'audience_rating', toJson: TautulliModelUtilities.doubleToString, fromJson: TautulliModelUtilities.stringToDouble)
    final double audienceRating;

    /// Link to an image for the audience rating.
    @JsonKey(name: 'audience_rating_image')
    final String audienceRatingImage;

    /// The user rating of the content.
    @JsonKey(name: 'user_rating', toJson: TautulliModelUtilities.doubleToString, fromJson: TautulliModelUtilities.stringToDouble)
    final double userRating;

    /// Duration of the content, in milliseconds.
    @JsonKey(name: 'duration', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
    final int duration;

    /// Year the content was released.
    @JsonKey(name: 'year', toJson: TautulliModelUtilities.integerToString, fromJson: TautulliModelUtilities.stringToInteger)
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
    @JsonKey(name: 'originally_available_at', toJson: TautulliModelUtilities.dateTimeToStringYYYYMMDD, fromJson: TautulliModelUtilities.stringToDateTime)
    final DateTime originallyAvailableAt;

    /// The date on which the content was added to Plex.
    /// This is typically read/stored as the file creation date within Plex.
    @JsonKey(name: 'added_at', toJson: TautulliModelUtilities.dateTimeToStringMilliseconds, fromJson: TautulliModelUtilities.millisecondsStringToDateTime)
    final DateTime addedAt;

    /// The date on which the content was last updated in Plex.
    @JsonKey(name: 'updated_at', toJson: TautulliModelUtilities.dateTimeToStringMilliseconds, fromJson: TautulliModelUtilities.millisecondsStringToDateTime)
    final DateTime updatedAt;

    /// The date on which the content was last viewed on Plex.
    @JsonKey(name: 'last_viewed_at', toJson: TautulliModelUtilities.dateTimeToStringMilliseconds, fromJson: TautulliModelUtilities.millisecondsStringToDateTime)
    final DateTime lastViewedAt;

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
