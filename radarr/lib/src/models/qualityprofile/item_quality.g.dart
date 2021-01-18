// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrQualityProfileItemQuality _$RadarrQualityProfileItemQualityFromJson(
    Map<String, dynamic> json) {
  return RadarrQualityProfileItemQuality(
    id: json['id'] as int,
    name: json['name'] as String,
    source: json['source'] as String,
    resolution: json['resolution'] as int,
    modifier: json['modifier'] as String,
  );
}

Map<String, dynamic> _$RadarrQualityProfileItemQualityToJson(
        RadarrQualityProfileItemQuality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'source': instance.source,
      'resolution': instance.resolution,
      'modifier': instance.modifier,
    };
