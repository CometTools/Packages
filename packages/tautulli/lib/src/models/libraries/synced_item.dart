import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/utilities.dart';

part 'synced_item.g.dart';

/// Model to store data about a synced item from Plex.
@JsonSerializable()
class TautulliSyncedItem {
    /// Name of the device that the content is synced to.
    @JsonKey(name: 'device_name')
    final String device_name;

    /// Platform of the device.
    @JsonKey(name: 'platform')
    final String platform;
    
    /// The user's ID.
    @JsonKey(name: 'user_id', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int userId;

    /// The user's name.
    @JsonKey(name: 'user')
    final String user;

    /// The user's username.
    @JsonKey(name: 'username')
    final String username;

    /// The root item's title.
    @JsonKey(name: 'root_title')
    final String rootTitle;

    /// The synced content title.
    @JsonKey(name: 'sync_title')
    final String syncTitle;

    /// The metadata type of the synced content.
    @JsonKey(name: 'metadata_type')
    final String metadataType;

    /// The content type of the synced content.
    @JsonKey(name: 'content_type')
    final String contentType;

    /// The rating key for the synced content.
    @JsonKey(name: 'rating_key', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int ratingKey;

    /// The current state of the synced content.
    @JsonKey(name: 'state')
    final String state;

    /// The amount of items.
    @JsonKey(name: 'item_count', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int itemCount;

    /// The amount of completed items.
    @JsonKey(name: 'item_complete_count', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int itemCompleteCount;

    /// The amount of downloaded items.
    @JsonKey(name: 'item_downloaded_count', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int itemDownloadedCount;

    /// The percentage completed of downloaded items.
    @JsonKey(name: 'item_downloaded_percent_complete')
    final int itemDownloadedPercentComplete;

    /// The synced video bitrate.
    @JsonKey(name: 'video_bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoBitrate;
    
    /// The synced audio bitrate.
    @JsonKey(name: 'audio_bitrate', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int audioBitrate;

    /// The synced photo quality.
    @JsonKey(name: 'photo_quality', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int photoQuality;

    /// The synced video quality.
    @JsonKey(name: 'video_quality', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int videoQuality;

    /// The total size in bytes of the synced content.
    @JsonKey(name: 'total_size', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int totalSize;

    /// Failure status.
    @JsonKey(name: 'failure')
    final String failure;

    /// The client ID.
    @JsonKey(name: 'client_id')
    final String clientId;

    /// The sync ID.
    @JsonKey(name: 'sync_id')
    final String syncId;

    TautulliSyncedItem({
        this.device_name,
        this.platform,
        this.userId,
        this.user,
        this.username,
        this.rootTitle,
        this.syncTitle,
        this.metadataType,
        this.contentType,
        this.ratingKey,
        this.state,
        this.itemCount,
        this.itemCompleteCount,
        this.itemDownloadedCount,
        this.itemDownloadedPercentComplete,
        this.videoBitrate,
        this.audioBitrate,
        this.photoQuality,
        this.videoQuality,
        this.totalSize,
        this.failure,
        this.clientId,
        this.syncId,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliSyncedItem] object.
    factory TautulliSyncedItem.fromJson(Map<String, dynamic> json) => _$TautulliSyncedItemFromJson(json);
    /// Serialize a [TautulliSyncedItem] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliSyncedItemToJson(this);
}
