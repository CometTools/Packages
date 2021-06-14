// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverseerrUser _$OverseerrUserFromJson(Map<String, dynamic> json) {
  return OverseerrUser(
    permissions: json['permissions'] as int,
    id: json['id'] as int,
    email: json['email'] as String,
    plexUsername: json['plexUsername'] as String?,
    username: json['username'] as String?,
    recoveryLinkExpirationDate: json['recoveryLinkExpirationDate'] as String?,
    userType: json['userType'] as int,
    avatar: json['avatar'] as String?,
    movieQuotaLimit: json['movieQuotaLimit'] as int?,
    movieQuotaDays: json['movieQuotaDays'] as int?,
    tvQuotaLimit: json['tvQuotaLimit'] as int?,
    tvQuotaDays: json['tvQuotaDays'] as int?,
    createdAt:
        OverseerrUtilities.dateTimeFromJson(json['createdAt'] as String?),
    updatedAt:
        OverseerrUtilities.dateTimeFromJson(json['updatedAt'] as String?),
    requestCount: json['requestCount'] as int,
    displayName: json['displayName'] as String,
  );
}

Map<String, dynamic> _$OverseerrUserToJson(OverseerrUser instance) {
  final val = <String, dynamic>{
    'permissions': instance.permissions,
    'id': instance.id,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('plexUsername', instance.plexUsername);
  writeNotNull('username', instance.username);
  writeNotNull(
      'recoveryLinkExpirationDate', instance.recoveryLinkExpirationDate);
  val['userType'] = instance.userType;
  writeNotNull('avatar', instance.avatar);
  writeNotNull('movieQuotaLimit', instance.movieQuotaLimit);
  writeNotNull('movieQuotaDays', instance.movieQuotaDays);
  writeNotNull('tvQuotaLimit', instance.tvQuotaLimit);
  writeNotNull('tvQuotaDays', instance.tvQuotaDays);
  writeNotNull(
      'createdAt', OverseerrUtilities.dateTimeToJson(instance.createdAt));
  writeNotNull(
      'updatedAt', OverseerrUtilities.dateTimeToJson(instance.updatedAt));
  val['requestCount'] = instance.requestCount;
  val['displayName'] = instance.displayName;
  return val;
}
