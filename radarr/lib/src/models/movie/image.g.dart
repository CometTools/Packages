// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieImage _$RadarrMovieImageFromJson(Map<String, dynamic> json) {
  return RadarrMovieImage(
    coverType: json['coverType'] as String,
    url: json['url'] as String,
    remoteUrl: json['remoteUrl'] as String,
  );
}

Map<String, dynamic> _$RadarrMovieImageToJson(RadarrMovieImage instance) =>
    <String, dynamic>{
      'coverType': instance.coverType,
      'url': instance.url,
      'remoteUrl': instance.remoteUrl,
    };
