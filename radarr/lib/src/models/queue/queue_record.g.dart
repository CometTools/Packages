// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrQueueRecord _$RadarrQueueRecordFromJson(Map<String, dynamic> json) {
  return RadarrQueueRecord(
    movieId: json['movieId'] as int?,
  );
}

Map<String, dynamic> _$RadarrQueueRecordToJson(RadarrQueueRecord instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('movieId', instance.movieId);
  return val;
}
