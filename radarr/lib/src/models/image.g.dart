// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrImage _$RadarrImageFromJson(Map<String, dynamic> json) {
  return RadarrImage(
    coverType: json['coverType'] as String,
    url: json['url'] as String,
    remoteUrl: json['remoteUrl'] as String,
  );
}

Map<String, dynamic> _$RadarrImageToJson(RadarrImage instance) =>
    <String, dynamic>{
      'coverType': instance.coverType,
      'url': instance.url,
      'remoteUrl': instance.remoteUrl,
    };
