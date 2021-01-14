// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieCollection _$RadarrMovieCollectionFromJson(
    Map<String, dynamic> json) {
  return RadarrMovieCollection(
    name: json['name'] as String,
    tmdbId: json['tmdbId'] as int,
  );
}

Map<String, dynamic> _$RadarrMovieCollectionToJson(
        RadarrMovieCollection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tmdbId': instance.tmdbId,
    };
