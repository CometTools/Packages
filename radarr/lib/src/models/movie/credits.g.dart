// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieCredits _$RadarrMovieCreditsFromJson(Map<String, dynamic> json) {
  return RadarrMovieCredits(
    personName: json['personName'] as String,
    creditTmdbId: json['creditTmdbId'] as String,
    personTmdbId: json['personTmdbId'] as int,
    movieId: json['movieId'] as int,
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : RadarrImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    character: json['character'] as String,
    department: json['department'] as String,
    job: json['job'] as String,
    order: json['order'] as int,
    type: RadarrUtilities.creditTypeFromJson(json['type'] as String),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrMovieCreditsToJson(RadarrMovieCredits instance) =>
    <String, dynamic>{
      'personName': instance.personName,
      'creditTmdbId': instance.creditTmdbId,
      'personTmdbId': instance.personTmdbId,
      'movieId': instance.movieId,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'character': instance.character,
      'department': instance.department,
      'job': instance.job,
      'order': instance.order,
      'type': RadarrUtilities.creditTypeToJson(instance.type),
      'id': instance.id,
    };
