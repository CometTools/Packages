// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrExtraFile _$RadarrExtraFileFromJson(Map<String, dynamic> json) {
  return RadarrExtraFile(
    movieId: json['movieId'] as int,
    movieFileId: json['movieFileId'] as int,
    relativePath: json['relativePath'] as String,
    extension: json['extension'] as String,
    type: json['type'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrExtraFileToJson(RadarrExtraFile instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'movieFileId': instance.movieFileId,
      'relativePath': instance.relativePath,
      'extension': instance.extension,
      'type': instance.type,
      'id': instance.id,
    };
