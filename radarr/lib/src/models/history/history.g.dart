// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrHistory _$RadarrHistoryFromJson(Map<String, dynamic> json) {
  return RadarrHistory(
    page: json['page'] as int,
    pageSize: json['pageSize'] as int,
    sortKey: RadarrUtilities.historySortKeyFromJson(json['sortKey'] as String),
    sortDirection:
        RadarrUtilities.sortDirectionFromJson(json['sortDirection'] as String),
    totalRecords: json['totalRecords'] as int,
    records: (json['records'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrHistoryRecord.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RadarrHistoryToJson(RadarrHistory instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'sortKey': RadarrUtilities.historySortKeyToJson(instance.sortKey),
      'sortDirection':
          RadarrUtilities.sortDirectionToJson(instance.sortDirection),
      'totalRecords': instance.totalRecords,
      'records': instance.records?.map((e) => e?.toJson())?.toList(),
    };
