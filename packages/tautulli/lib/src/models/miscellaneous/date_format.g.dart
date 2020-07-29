// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliDateFormat _$TautulliDateFormatFromJson(Map<String, dynamic> json) {
  return TautulliDateFormat(
    dateFormat: json['date_format'] as String,
    timeFormat: json['time_format'] as String,
  );
}

Map<String, dynamic> _$TautulliDateFormatToJson(TautulliDateFormat instance) =>
    <String, dynamic>{
      'date_format': instance.dateFormat,
      'time_format': instance.timeFormat,
    };
