// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternate_titles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieAlternateTitles _$RadarrMovieAlternateTitlesFromJson(
    Map<String, dynamic> json) {
  return RadarrMovieAlternateTitles(
    sourceType: json['sourceType'] as String,
    movieId: json['movieId'] as int,
    title: json['title'] as String,
    sourceId: json['sourceId'] as int,
    votes: json['votes'] as int,
    voteCount: json['voteCount'] as int,
    language: json['language'] == null
        ? null
        : RadarrLanguage.fromJson(json['language'] as Map<String, dynamic>),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrMovieAlternateTitlesToJson(
        RadarrMovieAlternateTitles instance) =>
    <String, dynamic>{
      'sourceType': instance.sourceType,
      'movieId': instance.movieId,
      'title': instance.title,
      'sourceId': instance.sourceId,
      'votes': instance.votes,
      'voteCount': instance.voteCount,
      'language': instance.language?.toJson(),
      'id': instance.id,
    };
