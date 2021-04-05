// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_import_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrManualImportFile _$RadarrManualImportFileFromJson(
    Map<String, dynamic> json) {
  return RadarrManualImportFile(
    path: json['path'] as String,
    movieId: json['movieId'] as int,
    quality: RadarrMovieFileQuality.fromJson(
        json['quality'] as Map<String, dynamic>),
    languages: (json['languages'] as List<dynamic>)
        .map((e) => RadarrLanguage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RadarrManualImportFileToJson(
        RadarrManualImportFile instance) =>
    <String, dynamic>{
      'path': instance.path,
      'movieId': instance.movieId,
      'quality': instance.quality.toJson(),
      'languages': instance.languages.map((e) => e.toJson()).toList(),
    };
