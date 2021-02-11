// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file_quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieFileQuality _$RadarrMovieFileQualityFromJson(
    Map<String, dynamic> json) {
  return RadarrMovieFileQuality(
    quality: json['quality'] == null
        ? null
        : RadarrMovieFileQualityQuality.fromJson(
            json['quality'] as Map<String, dynamic>),
    revision: json['revision'] == null
        ? null
        : RadarrMovieFileQualityRevision.fromJson(
            json['revision'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RadarrMovieFileQualityToJson(
        RadarrMovieFileQuality instance) =>
    <String, dynamic>{
      'quality': instance.quality?.toJson(),
      'revision': instance.revision?.toJson(),
    };
