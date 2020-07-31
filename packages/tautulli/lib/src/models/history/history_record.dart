import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/types.dart';
import 'package:tautulli/utilities.dart';

part 'history_record.g.dart';

/// Model for a single history record in Tautulli.
@JsonSerializable(explicitToJson: true)
class TautulliHistoryRecord {
    /// Reference ID. If it is null, that means the session is currently active.
    @JsonKey(name: 'reference_id')
    final int referenceId;

    /// Row ID. If it is null, that means the session is currently active.
    @JsonKey(name: 'row_id')
    final int rowId;

    /// ID. If it is null, that means the session is currently active.
    @JsonKey(name: 'id')
    final int id;

    /// Date of the history record.
    @JsonKey(name: 'date', toJson: TautulliUtilities.dateTimeToIntegerMilliseconds, fromJson: TautulliUtilities.millisecondsIntegerToDateTime)
    final DateTime date;

    /// Start date of the history record session.
    @JsonKey(name: 'started', toJson: TautulliUtilities.dateTimeToIntegerMilliseconds, fromJson: TautulliUtilities.millisecondsIntegerToDateTime)
    final DateTime started;

    /// End date of the history record session.
    @JsonKey(name: 'stopped', toJson: TautulliUtilities.dateTimeToIntegerMilliseconds, fromJson: TautulliUtilities.millisecondsIntegerToDateTime)
    final DateTime stopped;

    /// Duration of the session (in seconds).
    @JsonKey(name: 'duration', toJson: TautulliUtilities.durationToSecondsInteger, fromJson: TautulliUtilities.secondsIntegerToDuration)
    final Duration duration;

    /// The duration that the session has been or was paused for
    @JsonKey(name: 'paused_counter', toJson: TautulliUtilities.durationToSecondsInteger, fromJson: TautulliUtilities.secondsIntegerToDuration)
    final Duration pausedCounter;

    /// The ID of the user who streamed the content.
    @JsonKey(name: 'user_id')
    final int userId;

    /// Name of the user who streamed the content.
    @JsonKey(name: 'user')
    final String user;

    /// Friendly name of the user who streamed the content.
    @JsonKey(name: 'friendly_name')
    final String friendlyName;

    /// Platform of the streaming device.
    @JsonKey(name: 'platform')
    final String platform;

    /// Plex product name on the streaming device.
    @JsonKey(name: 'product')
    final String product;

    /// Name of the streaming device/player.
    @JsonKey(name: 'player')
    final String player;

    /// IP address of the streaming session.
    @JsonKey(name: 'ip_address')
    final String ipAddress;

    /// Was this a live session?
    @JsonKey(name: 'live', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool live;

    /// The type of media that was streamed.
    @JsonKey(name: 'media_type', toJson: TautulliUtilities.mediaTypeToString, fromJson: TautulliUtilities.mediaTypeToObject)
    final TautulliMediaType mediaType;

    /// The content's unique ID from Plex.
    @JsonKey(name: 'rating_key', fromJson: TautulliUtilities.ensureIntegerFromJson)
    final int ratingKey;

    /// The content's parent's unique ID from Plex.
    @JsonKey(name: 'parent_rating_key', fromJson: TautulliUtilities.ensureIntegerFromJson)
    final int parentRatingKey;

    /// The content's grandparent's unique ID from Plex.
    @JsonKey(name: 'grandparent_rating_key', fromJson: TautulliUtilities.ensureIntegerFromJson)
    final int grandparentRatingKey;

    /// The full title of the content.
    @JsonKey(name: 'full_title')
    final String fullTitle;

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

    /// The year the content was released.
    @JsonKey(name: 'year')
    final int year;

    /// The media index of the content.
    @JsonKey(name: 'media_index', fromJson: TautulliUtilities.ensureIntegerFromJson)
    final int mediaIndex;

    /// The content's parent's media index.
    @JsonKey(name: 'parent_media_index', fromJson: TautulliUtilities.ensureIntegerFromJson)
    final int parentMediaIndex;

    /// Thumbnail path for the content.
    @JsonKey(name: 'thumb')
    final String thumb;

    /// The date on which the content was originally available on.
    /// 
    /// Because of the custom formatting options, the DateTime is returned as a string.
    /// You can use the miscellaneous call `getDateFormats()` to pull the date and time formatting strings.
    @JsonKey(name: 'originally_available_at')
    final String originallyAvailableAt;

    /// The globally unique identifier for the content.
    @JsonKey(name: 'guid')
    final String guid;

    /// What decision was made on how to handle the content.
    @JsonKey(name: 'transcode_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision transcodeDecision;

    /// How much of the content has been played.
    @JsonKey(name: 'percent_complete')
    final int percentComplete;

    /// The watch status of the history record.
    @JsonKey(name: 'watched_status', toJson: TautulliUtilities.watchedStatusToDouble, fromJson: TautulliUtilities.watchedStatusToObject)
    final TautulliWatchedStatus watchedStatus;

    /// How many groups this session is in.
    @JsonKey(name: 'group_count')
    final int groupCount;

    /// List of all the groups this session is in.
    @JsonKey(name: 'group_ids', toJson: TautulliUtilities.listStringToString, fromJson: TautulliUtilities.stringToListString)
    final List<String> groupIds;

    /// Current state of the session if it is still active.
    @JsonKey(name: 'state', toJson: TautulliUtilities.sessionStateToString, fromJson: TautulliUtilities.sessionStateToObject)
    final TautulliSessionState state;

    /// Session's key/identifier if it is still active.
    @JsonKey(name: 'session_key')
    final int sessionKey;
    
    TautulliHistoryRecord({
        this.referenceId,
        this.rowId,
        this.id,
        this.date,
        this.started,
        this.stopped,
        this.duration,
        this.pausedCounter,
        this.userId,
        this.user,
        this.friendlyName,
        this.platform,
        this.player,
        this.product,
        this.ipAddress,
        this.live,
        this.mediaType,
        this.ratingKey,
        this.parentRatingKey,
        this.grandparentRatingKey,
        this.fullTitle,
        this.title,
        this.parentTitle,
        this.grandparentTitle,
        this.originalTitle,
        this.year,
        this.mediaIndex,
        this.parentMediaIndex,
        this.thumb,
        this.originallyAvailableAt,
        this.guid,
        this.transcodeDecision,
        this.percentComplete,
        this.watchedStatus,
        this.groupCount,
        this.groupIds,
        this.state,
        this.sessionKey,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliHistoryRecord] object.
    factory TautulliHistoryRecord.fromJson(Map<String, dynamic> json) => _$TautulliHistoryRecordFromJson(json);
    /// Serialize a [TautulliHistoryRecord] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliHistoryRecordToJson(this);
}
