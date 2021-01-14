// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovie _$RadarrMovieFromJson(Map<String, dynamic> json) {
  return RadarrMovie(
    title: json['title'] as String,
    originalTitle: json['originalTitle'] as String,
    alternateTitles: (json['alternateTitles'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrMovieAlternateTitles.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    secondaryYearSourceId: json['secondaryYearSourceId'] as int,
    sortTitle: json['sortTitle'] as String,
    sizeOnDisk: json['sizeOnDisk'] as int,
    status: json['status'] as String,
    overview: json['overview'] as String,
    inCinemas: RadarrUtilities.dateTimeFromJson(json['inCinemas'] as String),
    physicalRelease:
        RadarrUtilities.dateTimeFromJson(json['physicalRelease'] as String),
    digitalRelease:
        RadarrUtilities.dateTimeFromJson(json['digitalRelease'] as String),
    images: (json['images'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrMovieImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    website: json['website'] as String,
    year: json['year'] as int,
    hasFile: json['hasFile'] as bool,
    youTubeTrailerId: json['youTubeTrailerId'] as String,
    studio: json['studio'] as String,
    path: json['path'] as String,
    qualityProfileId: json['qualityProfileId'] as int,
    monitored: json['monitored'] as bool,
    minimumAvailability: json['minimumAvailability'] as String,
    isAvailable: json['isAvailable'] as bool,
    folderName: json['folderName'] as String,
    runtime: json['runtime'] as int,
    cleanTitle: json['cleanTitle'] as String,
    imdbId: json['imdbId'] as String,
    tmdbId: json['tmdbId'] as int,
    titleSlug: json['titleSlug'] as String,
    certification: json['certification'] as String,
    genres: (json['genres'] as List)?.map((e) => e as String)?.toList(),
    tags: (json['tags'] as List)?.map((e) => e as int)?.toList(),
    added: RadarrUtilities.dateTimeFromJson(json['added'] as String),
    ratings: json['ratings'] == null
        ? null
        : RadarrMovieRating.fromJson(json['ratings'] as Map<String, dynamic>),
    movieFile: json['movieFile'] == null
        ? null
        : RadarrMovieFile.fromJson(json['movieFile'] as Map<String, dynamic>),
    collection: json['collection'] == null
        ? null
        : RadarrMovieCollection.fromJson(
            json['collection'] as Map<String, dynamic>),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrMovieToJson(RadarrMovie instance) =>
    <String, dynamic>{
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'alternateTitles':
          instance.alternateTitles?.map((e) => e?.toJson())?.toList(),
      'secondaryYearSourceId': instance.secondaryYearSourceId,
      'sortTitle': instance.sortTitle,
      'sizeOnDisk': instance.sizeOnDisk,
      'status': instance.status,
      'overview': instance.overview,
      'inCinemas': RadarrUtilities.dateTimeToJson(instance.inCinemas),
      'physicalRelease':
          RadarrUtilities.dateTimeToJson(instance.physicalRelease),
      'digitalRelease': RadarrUtilities.dateTimeToJson(instance.digitalRelease),
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'website': instance.website,
      'year': instance.year,
      'hasFile': instance.hasFile,
      'youTubeTrailerId': instance.youTubeTrailerId,
      'studio': instance.studio,
      'path': instance.path,
      'qualityProfileId': instance.qualityProfileId,
      'monitored': instance.monitored,
      'minimumAvailability': instance.minimumAvailability,
      'isAvailable': instance.isAvailable,
      'folderName': instance.folderName,
      'runtime': instance.runtime,
      'cleanTitle': instance.cleanTitle,
      'imdbId': instance.imdbId,
      'tmdbId': instance.tmdbId,
      'titleSlug': instance.titleSlug,
      'certification': instance.certification,
      'genres': instance.genres,
      'tags': instance.tags,
      'added': RadarrUtilities.dateTimeToJson(instance.added),
      'ratings': instance.ratings?.toJson(),
      'movieFile': instance.movieFile?.toJson(),
      'collection': instance.collection?.toJson(),
      'id': instance.id,
    };
