// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrQueue _$RadarrQueueFromJson(Map<String, dynamic> json) {
  return RadarrQueue(
    page: json['page'] as int?,
    pageSize: json['pageSize'] as int?,
    sortKey: RadarrUtilities.queueSortKeyFromJson(json['sortKey'] as String?),
    sortDirection:
        RadarrUtilities.sortDirectionFromJson(json['sortDirection'] as String?),
    totalRecords: json['totalRecords'] as int?,
  );
}

Map<String, dynamic> _$RadarrQueueToJson(RadarrQueue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('sortKey', RadarrUtilities.queueSortKeyToJson(instance.sortKey));
  writeNotNull('sortDirection',
      RadarrUtilities.sortDirectionToJson(instance.sortDirection));
  writeNotNull('totalRecords', instance.totalRecords);
  return val;
}
