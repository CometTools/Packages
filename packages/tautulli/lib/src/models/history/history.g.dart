// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliHistory _$TautulliHistoryFromJson(Map<String, dynamic> json) {
  return TautulliHistory(
    records: TautulliHistory._entriesToObjectArray(json['data'] as List),
    draw: json['draw'] as int,
    recordsTotal: json['recordsTotal'] as int,
    recordsFiltered: json['recordsFiltered'] as int,
    totalDuration: json['total_duration'] as String,
    filterDuration: json['filter_duration'] as String,
  );
}

Map<String, dynamic> _$TautulliHistoryToJson(TautulliHistory instance) =>
    <String, dynamic>{
      'data': TautulliHistory._entriesToMap(instance.records),
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
      'total_duration': instance.totalDuration,
      'filter_duration': instance.filterDuration,
    };
