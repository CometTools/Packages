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
    RadarrMovieCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('tmdbId', instance.tmdbId);
  return val;
}
