// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieFile _$RadarrMovieFileFromJson(Map<String, dynamic> json) {
  return RadarrMovieFile(
    movieId: json['movieId'] as int,
    relativePath: json['relativePath'] as String,
    path: json['path'] as String,
    size: json['size'] as int,
    dateAdded: RadarrUtilities.dateTimeFromJson(json['dateAdded'] as String),
    indexerFlags: json['indexerFlags'] as int,
    quality: json['quality'] == null
        ? null
        : RadarrMovieFileQuality.fromJson(
            json['quality'] as Map<String, dynamic>),
    customFormats: (json['customFormats'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrCustomFormat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mediaInfo: json['mediaInfo'] == null
        ? null
        : RadarrMovieFileMediaInfo.fromJson(
            json['mediaInfo'] as Map<String, dynamic>),
    qualityCutoffNotMet: json['qualityCutoffNotMet'] as bool,
    languages: (json['languages'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrLanguage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    edition: json['edition'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrMovieFileToJson(RadarrMovieFile instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'relativePath': instance.relativePath,
      'path': instance.path,
      'size': instance.size,
      'dateAdded': RadarrUtilities.dateTimeToJson(instance.dateAdded),
      'indexerFlags': instance.indexerFlags,
      'quality': instance.quality?.toJson(),
      'customFormats':
          instance.customFormats?.map((e) => e?.toJson())?.toList(),
      'mediaInfo': instance.mediaInfo?.toJson(),
      'qualityCutoffNotMet': instance.qualityCutoffNotMet,
      'languages': instance.languages?.map((e) => e?.toJson())?.toList(),
      'edition': instance.edition,
      'id': instance.id,
    };
