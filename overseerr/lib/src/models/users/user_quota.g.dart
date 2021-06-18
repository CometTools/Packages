// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_quota.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverseerrUserQuota _$OverseerrUserQuotaFromJson(Map<String, dynamic> json) {
  return OverseerrUserQuota(
    movie: OverseerrQuota.fromJson(json['movie'] as Map<String, dynamic>),
    tv: OverseerrQuota.fromJson(json['tv'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OverseerrUserQuotaToJson(OverseerrUserQuota instance) =>
    <String, dynamic>{
      'movie': instance.movie.toJson(),
      'tv': instance.tv.toJson(),
    };
