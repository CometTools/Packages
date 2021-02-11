// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file_quality_quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieFileQualityQuality _$RadarrMovieFileQualityQualityFromJson(
    Map<String, dynamic> json) {
  return RadarrMovieFileQualityQuality(
    id: json['id'] as int,
    name: json['name'] as String,
    source: json['source'] as String,
    resolution: json['resolution'] as int,
    modifier: json['modifier'] as String,
  );
}

Map<String, dynamic> _$RadarrMovieFileQualityQualityToJson(
        RadarrMovieFileQualityQuality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'source': instance.source,
      'resolution': instance.resolution,
      'modifier': instance.modifier,
    };
