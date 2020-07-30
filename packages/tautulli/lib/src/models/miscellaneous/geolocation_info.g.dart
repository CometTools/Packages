// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliGeolocationInfo _$TautulliGeolocationInfoFromJson(
    Map<String, dynamic> json) {
  return TautulliGeolocationInfo(
    code: json['code'] as String,
    country: json['country'] as String,
    region: json['region'] as String,
    city: json['city'] as String,
    postalCode: json['postal_code'] as String,
    timezone: json['timezone'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    accuracy: (json['accuracy'] as num)?.toDouble(),
    continent: json['continent'] as String,
  );
}

Map<String, dynamic> _$TautulliGeolocationInfoToJson(
        TautulliGeolocationInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'country': instance.country,
      'region': instance.region,
      'city': instance.city,
      'postal_code': instance.postalCode,
      'timezone': instance.timezone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracy': instance.accuracy,
      'continent': instance.continent,
    };
