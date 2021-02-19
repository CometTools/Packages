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
    RadarrQualityProfileItemQuality instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('source', instance.source);
  writeNotNull('resolution', instance.resolution);
  writeNotNull('modifier', instance.modifier);
  return val;
}
