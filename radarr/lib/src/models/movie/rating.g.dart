// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieRating _$RadarrMovieRatingFromJson(Map<String, dynamic> json) {
  return RadarrMovieRating(
    votes: json['votes'] as int,
    value: (json['value'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$RadarrMovieRatingToJson(RadarrMovieRating instance) =>
    <String, dynamic>{
      'votes': instance.votes,
      'value': instance.value,
    };
