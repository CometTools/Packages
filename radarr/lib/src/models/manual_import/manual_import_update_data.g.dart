// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_import_update_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrManualImportUpdateData _$RadarrManualImportUpdateDataFromJson(
    Map<String, dynamic> json) {
  return RadarrManualImportUpdateData(
    id: json['id'] as int?,
    path: json['path'] as String?,
    movieId: json['movieId'] as int?,
  );
}

Map<String, dynamic> _$RadarrManualImportUpdateDataToJson(
    RadarrManualImportUpdateData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('path', instance.path);
  writeNotNull('movieId', instance.movieId);
  return val;
}
