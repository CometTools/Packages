// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SonarrSeriesImage _$SonarrSeriesImageFromJson(Map<String, dynamic> json) {
  return SonarrSeriesImage(
    coverType: json['coverType'] as String?,
    url: json['url'] as String?,
    remoteUrl: json['remoteUrl'] as String?,
  );
}

Map<String, dynamic> _$SonarrSeriesImageToJson(SonarrSeriesImage instance) =>
    <String, dynamic>{
      'coverType': instance.coverType,
      'url': instance.url,
      'remoteUrl': instance.remoteUrl,
    };
