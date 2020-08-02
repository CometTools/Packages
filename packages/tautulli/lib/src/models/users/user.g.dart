// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliUser _$TautulliUserFromJson(Map<String, dynamic> json) {
  return TautulliUser(
    rowId: json['row_id'] as int,
    userId: json['user_id'] as int,
    friendlyName: json['friendly_name'] as String,
    thumb: json['thumb'] as String,
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
    allowGuest: TautulliUtilities.integerToBoolean(json['allow_guest'] as int),
    serverToken: json['server_token'] as String,
    sharedLibraries:
        TautulliUser._sharedLibrariesFromJson(json['shared_libraries']),
    filterAll: json['filter_all'] as String,
    filterMovies: json['filter_movies'] as String,
    filterTv: json['filter_tv'] as String,
    filterMusic: json['filter_music'] as String,
    filterPhotos: json['filter_photos'] as String,
  );
}

Map<String, dynamic> _$TautulliUserToJson(TautulliUser instance) =>
    <String, dynamic>{
      'row_id': instance.rowId,
      'user_id': instance.userId,
      'friendly_name': instance.friendlyName,
      'thumb': instance.thumb,
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
      'allow_guest': TautulliUtilities.booleanToInteger(instance.allowGuest),
      'server_token': instance.serverToken,
      'shared_libraries':
          TautulliUser._sharedLibrariesToJson(instance.sharedLibraries),
      'filter_all': instance.filterAll,
      'filter_movies': instance.filterMovies,
      'filter_tv': instance.filterTv,
      'filter_music': instance.filterMusic,
      'filter_photos': instance.filterPhotos,
    };
