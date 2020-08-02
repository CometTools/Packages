// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synced_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliSyncedItem _$TautulliSyncedItemFromJson(Map<String, dynamic> json) {
  return TautulliSyncedItem(
    device_name: json['device_name'] as String,
    platform: json['platform'] as String,
    userId: TautulliUtilities.stringToInteger(json['user_id'] as String),
    user: json['user'] as String,
    username: json['username'] as String,
    rootTitle: json['root_title'] as String,
    syncTitle: json['sync_title'] as String,
    metadataType: json['metadata_type'] as String,
    contentType: json['content_type'] as String,
    ratingKey: TautulliUtilities.stringToInteger(json['rating_key'] as String),
    state: json['state'] as String,
    itemCount: TautulliUtilities.stringToInteger(json['item_count'] as String),
    itemCompleteCount: TautulliUtilities.stringToInteger(
        json['item_complete_count'] as String),
    itemDownloadedCount: TautulliUtilities.stringToInteger(
        json['item_downloaded_count'] as String),
    itemDownloadedPercentComplete:
        json['item_downloaded_percent_complete'] as int,
    videoBitrate:
        TautulliUtilities.stringToInteger(json['video_bitrate'] as String),
    audioBitrate:
        TautulliUtilities.stringToInteger(json['audio_bitrate'] as String),
    photoQuality:
        TautulliUtilities.stringToInteger(json['photo_quality'] as String),
    videoQuality:
        TautulliUtilities.stringToInteger(json['video_quality'] as String),
    totalSize: TautulliUtilities.stringToInteger(json['total_size'] as String),
    failure: json['failure'] as String,
    clientId: json['client_id'] as String,
    syncId: json['sync_id'] as String,
  );
}

Map<String, dynamic> _$TautulliSyncedItemToJson(TautulliSyncedItem instance) =>
    <String, dynamic>{
      'device_name': instance.device_name,
      'platform': instance.platform,
      'user_id': TautulliUtilities.integerToString(instance.userId),
      'user': instance.user,
      'username': instance.username,
      'root_title': instance.rootTitle,
      'sync_title': instance.syncTitle,
      'metadata_type': instance.metadataType,
      'content_type': instance.contentType,
      'rating_key': TautulliUtilities.integerToString(instance.ratingKey),
      'state': instance.state,
      'item_count': TautulliUtilities.integerToString(instance.itemCount),
      'item_complete_count':
          TautulliUtilities.integerToString(instance.itemCompleteCount),
      'item_downloaded_count':
          TautulliUtilities.integerToString(instance.itemDownloadedCount),
      'item_downloaded_percent_complete':
          instance.itemDownloadedPercentComplete,
      'video_bitrate': TautulliUtilities.integerToString(instance.videoBitrate),
      'audio_bitrate': TautulliUtilities.integerToString(instance.audioBitrate),
      'photo_quality': TautulliUtilities.integerToString(instance.photoQuality),
      'video_quality': TautulliUtilities.integerToString(instance.videoQuality),
      'total_size': TautulliUtilities.integerToString(instance.totalSize),
      'failure': instance.failure,
      'client_id': instance.clientId,
      'sync_id': instance.syncId,
    };
