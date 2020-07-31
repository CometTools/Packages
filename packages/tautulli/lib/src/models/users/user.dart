import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/types.dart';
import 'package:tautulli/utilities.dart';

part 'user.g.dart';

/// Model for a single Tautulli user's data in Tautulli.
@JsonSerializable(explicitToJson: true)
class TautulliUser {
    /// The row identifier of the user.
    @JsonKey(name: 'row_id')
    final int rowId;

    /// The user identifier.
    @JsonKey(name: 'user_id')
    final int userId;

    /// Friendly name of the user.
    @JsonKey(name: 'friendly_name')
    final String friendlyName;

    /// Thumbnail link of the user.
    @JsonKey(name: 'user_thumb')
    final String userThumb;

    /// Total number of plays by this user.
    @JsonKey(name: 'plays')
    final int plays;

    /// The total duration this user has viewed from your server(s).
    @JsonKey(name: 'duration', toJson: TautulliUtilities.durationToSecondsInteger, fromJson: TautulliUtilities.secondsIntegerToDuration)
    final Duration duration;

    /// The date/time that the user was last seen.
    @JsonKey(name: 'last_seen', toJson: TautulliUtilities.dateTimeToIntegerMilliseconds, fromJson: TautulliUtilities.millisecondsIntegerToDateTime)
    final DateTime lastSeen;

    /// The title of the content that was last played.
    @JsonKey(name: 'last_played')
    final String lastPlayed;
    
    /// The history row identifier of the last session.
    @JsonKey(name: 'history_row_id')
    final int historyRowId;

    /// The last recorded IP address of the user.
    @JsonKey(name: 'ip_address')
    final String ipAddress;

    /// The platform that was last used by the user.
    @JsonKey(name: 'platform')
    final String platform;

    /// The name of the player that was last used by the user.
    @JsonKey(name: 'player')
    final String player;

    /// The rating key for the content of the last session.
    @JsonKey(name: 'rating_key')
    final int ratingKey;

    /// The media type of the last session.
    @JsonKey(name: 'media_type', toJson: TautulliUtilities.mediaTypeToString, fromJson: TautulliUtilities.mediaTypeToObject)
    final TautulliMediaType mediaType;

    /// The thumbnail path for the last session's content.
    @JsonKey(name: 'thumb')
    final String thumb;

    /// The title of the parent of the last session's content.
    @JsonKey(name: 'parent_title')
    final String parentTitle;

    /// The release year of the last session's content.
    @JsonKey(name: 'year')
    final int year;

    /// The media index of the last session's content (for example, the track # or the season #).
    @JsonKey(name: 'media_index', fromJson: TautulliUtilities.ensureIntegerFromJson)
    final int mediaIndex;

    /// The media index of the last session's content's parent (for example, the album or the season #).
    @JsonKey(name: 'parent_media_index', fromJson: TautulliUtilities.ensureIntegerFromJson)
    final int parentMediaIndex;

    /// Was the user's last session live content?
    @JsonKey(name: 'live', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool live;

    /// The date on which the last session's content was originally available on.
    /// 
    /// Because of the custom formatting options, the DateTime is returned as a string.
    /// You can use the miscellaneous call `getDateFormats()` to pull the date and time formatting strings.
    @JsonKey(name: 'originally_available_at')
    final String originallyAvailableAt;

    /// The Plex GUID of the last session's content.
    @JsonKey(name: 'guid')
    final String guid;

    /// What decision was made on how to handle the last session's content.
    @JsonKey(name: 'transcode_decision', toJson: TautulliUtilities.transcodeDecisionToString, fromJson: TautulliUtilities.transcodeDecisionToObject)
    final TautulliTranscodeDecision transcodeDecision;

    /// Does the user have notifications enabled?
    @JsonKey(name: 'do_notify', toJson: _booleanToStringChecked, fromJson: _stringToBooleanChecked)
    final bool doNotify;

    /// Is history tracking enabled for this user?
    @JsonKey(name: 'keep_history', toJson: _booleanToStringChecked, fromJson: _stringToBooleanChecked)
    final bool keepHistory;

    /// Does the user have guest access to Tautulli?
    @JsonKey(name: 'allow_guest', toJson: _booleanToStringChecked, fromJson: _stringToBooleanChecked)
    final bool allowGuest;

    /// Is the user active?
    @JsonKey(name: 'is_active', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isActive;

    TautulliUser({
        this.rowId,
        this.userId,
        this.friendlyName,
        this.userThumb,
        this.plays,
        this.duration,
        this.lastSeen,
        this.lastPlayed,
        this.historyRowId,
        this.ipAddress,
        this.platform,
        this.player,
        this.ratingKey,
        this.mediaType,
        this.thumb,
        this.parentTitle,
        this.year,
        this.mediaIndex,
        this.parentMediaIndex,
        this.live,
        this.originallyAvailableAt,
        this.guid,
        this.transcodeDecision,
        this.doNotify,
        this.keepHistory,
        this.allowGuest,
        this.isActive,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliUser] object.
    factory TautulliUser.fromJson(Map<String, dynamic> json) => _$TautulliUserFromJson(json);
    /// Serialize a [TautulliUser] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliUserToJson(this);

    /// This converts the boolean back to the "Checked" for true and "" for false format.
    static String _booleanToStringChecked(bool keep) => keep ? 'Checked' : '';
    /// Some values are returned as "Checked" as true, and "" as false. This is just a helper for String -> Boolean.
    static bool _stringToBooleanChecked(String keep) => keep == 'Checked' ? true : false;
}