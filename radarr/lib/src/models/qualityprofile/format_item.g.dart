// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrQualityProfileFormatItem _$RadarrQualityProfileFormatItemFromJson(
    Map<String, dynamic> json) {
  return RadarrQualityProfileFormatItem(
    format: json['format'] as int,
    name: json['name'] as String,
    score: json['score'] as int,
  );
}

Map<String, dynamic> _$RadarrQualityProfileFormatItemToJson(
        RadarrQualityProfileFormatItem instance) =>
    <String, dynamic>{
      'format': instance.format,
      'name': instance.name,
      'score': instance.score,
    };
