// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file_quality_revision.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieFileQualityRevision _$RadarrMovieFileQualityRevisionFromJson(
    Map<String, dynamic> json) {
  return RadarrMovieFileQualityRevision(
    version: json['version'] as int,
    real: json['real'] as int,
    isRepack: json['isRepack'] as bool,
  );
}

Map<String, dynamic> _$RadarrMovieFileQualityRevisionToJson(
        RadarrMovieFileQualityRevision instance) =>
    <String, dynamic>{
      'version': instance.version,
      'real': instance.real,
      'isRepack': instance.isRepack,
    };
