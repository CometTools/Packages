// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrQualityProfileItem _$RadarrQualityProfileItemFromJson(
    Map<String, dynamic> json) {
  return RadarrQualityProfileItem(
    name: json['name'] as String,
    quality: json['quality'] == null
        ? null
        : RadarrQualityProfileItemQuality.fromJson(
            json['quality'] as Map<String, dynamic>),
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrQualityProfileItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowed: json['allowed'] as bool,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrQualityProfileItemToJson(
        RadarrQualityProfileItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quality': instance.quality?.toJson(),
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'allowed': instance.allowed,
      'id': instance.id,
    };
