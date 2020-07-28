import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/types.dart';

part 'session.g.dart';

/// Model for a single activity session in Tautulli.
@JsonSerializable()
class TautulliSession {
    /// Type of media in this session.
    @JsonKey(name: 'media_type', toJson: _mediaTypeToString, fromJson: _mediaTypeToObject)
    final TautulliMediaType mediaType;

    /// Session's key/identifier.
    @JsonKey(name: 'session_key', toJson: _integerToString, fromJson: _stringToInteger)
    final int sessionKey;

    /// _Unknown_: Somehow related to the progress percentage.
    @JsonKey(name: 'view_offset', toJson: _integerToString, fromJson: _stringToInteger)
    final int viewOffset;

    /// How much of the content has been played.
    @JsonKey(name: 'progress_percent', toJson: _integerToString, fromJson: _stringToInteger)
    final int progressPercent;

    /// Quality profile of the stream.
    @JsonKey(name: 'quality_profile')
    final String qualityProfile;

    /// Quality of the synced version of the content (if applicable).
    @JsonKey(name: 'synced_version_profile')
    final String syncedVersionProfile;

    /// Quality of the optimized version of the content (if applicable).
    @JsonKey(name: 'optimized_version_profile')
    final String optimizedVersionProfile;

    /// The user streaming the content.
    @JsonKey(name: 'user')
    final String user;

    /// _Unknown_: Likely related to live TV streams.
    @JsonKey(name: 'channel_stream')
    final int channelStream;

    /// Plex section ID the content belongs to.
    @JsonKey(name: 'section_id', toJson: _integerToString, fromJson: _stringToInteger)
    final int sectionId;

    /// Name of the Plex library that the content belongs to.
    @JsonKey(name: 'library_name')
    final String libraryName;

    /// The content's unique ID from Plex.
    @JsonKey(name: 'rating_key', toJson: _integerToString, fromJson: _stringToInteger)
    final int ratingKey;

    /// The content's parent's unique ID from Plex (if applicable).
    @JsonKey(name: 'parent_rating_key', toJson: _integerToString, fromJson: _stringToInteger)
    final int parentRatingKey;

    /// The content's grandparent's unique ID from Plex (if applicable).
    @JsonKey(name: 'grandparent_rating_key', toJson: _integerToString, fromJson: _stringToInteger)
    final int grandparentRatingKey;

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
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /** JSON (De)Serialization Related */

    factory TautulliSession.fromJson(Map<String, dynamic> json) => _$TautulliSessionFromJson(json);
    Map<String, dynamic> toJson() => _$TautulliSessionToJson(this);

    static int _stringToInteger(String value) => int.tryParse(value) ?? -1;
    static String _integerToString(int value) => value?.toString() ?? '-1';

    static TautulliMediaType _mediaTypeToObject(String type) => TautulliMediaType.MOVIE.from(type);
    static String _mediaTypeToString(TautulliMediaType type) => type?.value ?? '';
}
