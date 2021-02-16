// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrRelease _$RadarrReleaseFromJson(Map<String, dynamic> json) {
  return RadarrRelease(
    guid: json['guid'] as String,
    quality: json['quality'] == null
        ? null
        : RadarrMovieFileQuality.fromJson(
            json['quality'] as Map<String, dynamic>),
    customFormats: (json['customFormats'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrCustomFormat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    customFormatScore: json['customFormatScore'] as int,
    qualityWeight: json['qualityWeight'] as int,
    age: json['age'] as int,
    ageHours: (json['ageHours'] as num)?.toDouble(),
    ageMinutes: (json['ageMinutes'] as num)?.toDouble(),
    size: json['size'] as int,
    indexerId: json['indexerId'] as int,
    indexer: json['indexer'] as String,
    releaseGroup: json['releaseGroup'] as String,
    releaseHash: json['releaseHash'] as String,
    title: json['title'] as String,
    sceneSource: json['sceneSource'] as bool,
    movieTitle: json['movieTitle'] as String,
    languages: (json['languages'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrLanguage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    approved: json['approved'] as bool,
    temporarilyRejected: json['temporarilyRejected'] as bool,
    rejected: json['rejected'] as bool,
    imdbId: json['imdbId'] as int,
    rejections: (json['rejections'] as List)?.map((e) => e as String)?.toList(),
    publishDate:
        RadarrUtilities.dateTimeFromJson(json['publishDate'] as String),
    commentUrl: json['commentUrl'] as String,
    downloadUrl: json['downloadUrl'] as String,
    infoUrl: json['infoUrl'] as String,
    downloadAllowed: json['downloadAllowed'] as bool,
    releaseWeight: json['releaseWeight'] as int,
    edition: json['edition'] as String,
    seeders: json['seeders'] as int,
    leechers: json['leechers'] as int,
    protocol: RadarrUtilities.protocolFromJson(json['protocol'] as String),
  );
}

Map<String, dynamic> _$RadarrReleaseToJson(RadarrRelease instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'quality': instance.quality?.toJson(),
      'customFormats':
          instance.customFormats?.map((e) => e?.toJson())?.toList(),
      'customFormatScore': instance.customFormatScore,
      'qualityWeight': instance.qualityWeight,
      'age': instance.age,
      'ageHours': instance.ageHours,
      'ageMinutes': instance.ageMinutes,
      'size': instance.size,
      'indexerId': instance.indexerId,
      'indexer': instance.indexer,
      'releaseGroup': instance.releaseGroup,
      'releaseHash': instance.releaseHash,
      'title': instance.title,
      'sceneSource': instance.sceneSource,
      'movieTitle': instance.movieTitle,
      'languages': instance.languages?.map((e) => e?.toJson())?.toList(),
      'approved': instance.approved,
      'temporarilyRejected': instance.temporarilyRejected,
      'rejected': instance.rejected,
      'imdbId': instance.imdbId,
      'rejections': instance.rejections,
      'publishDate': RadarrUtilities.dateTimeToJson(instance.publishDate),
      'commentUrl': instance.commentUrl,
      'downloadUrl': instance.downloadUrl,
      'infoUrl': instance.infoUrl,
      'downloadAllowed': instance.downloadAllowed,
      'releaseWeight': instance.releaseWeight,
      'edition': instance.edition,
      'seeders': instance.seeders,
      'leechers': instance.leechers,
      'protocol': RadarrUtilities.protocolToJson(instance.protocol),
    };
