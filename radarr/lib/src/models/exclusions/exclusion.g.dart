// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exclusion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrExclusion _$RadarrExclusionFromJson(Map<String, dynamic> json) {
  return RadarrExclusion(
    tmdbId: json['tmdbId'] as int,
    movieTitle: json['movieTitle'] as String,
    movieYear: json['movieYear'] as int,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrExclusionToJson(RadarrExclusion instance) =>
    <String, dynamic>{
      'tmdbId': instance.tmdbId,
      'movieTitle': instance.movieTitle,
      'movieYear': instance.movieYear,
      'id': instance.id,
    };
