// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrHistoryRecord _$RadarrHistoryRecordFromJson(Map<String, dynamic> json) {
  return RadarrHistoryRecord(
    movieId: json['movieId'] as int,
    sourceTitle: json['sourceTitle'] as String,
    languages: (json['languages'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrLanguage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quality: json['quality'] == null
        ? null
        : RadarrMovieFileQuality.fromJson(
            json['quality'] as Map<String, dynamic>),
    customFormats: (json['customFormats'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrCustomFormat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    qualityCutoffNotMet: json['qualityCutoffNotMet'] as bool,
    date: RadarrUtilities.dateTimeFromJson(json['date'] as String),
    downloadId: json['downloadId'] as String,
    eventType: RadarrUtilities.eventTypeFromJson(json['eventType'] as String),
    data: json['data'] as Map<String, dynamic>,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrHistoryRecordToJson(
        RadarrHistoryRecord instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'sourceTitle': instance.sourceTitle,
      'languages': instance.languages?.map((e) => e?.toJson())?.toList(),
      'quality': instance.quality?.toJson(),
      'customFormats':
          instance.customFormats?.map((e) => e?.toJson())?.toList(),
      'qualityCutoffNotMet': instance.qualityCutoffNotMet,
      'date': RadarrUtilities.dateTimeToJson(instance.date),
      'downloadId': instance.downloadId,
      'eventType': RadarrUtilities.eventTypeToJson(instance.eventType),
      'data': instance.data,
      'id': instance.id,
    };
