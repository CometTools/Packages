// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverseerrQuota _$OverseerrQuotaFromJson(Map<String, dynamic> json) {
  return OverseerrQuota(
    days: json['days'] as int,
    limit: json['limit'] as int,
    used: json['used'] as int?,
    remaining: json['remaining'] as int?,
    restricted: json['restricted'] as bool,
  );
}

Map<String, dynamic> _$OverseerrQuotaToJson(OverseerrQuota instance) {
  final val = <String, dynamic>{
    'days': instance.days,
    'limit': instance.limit,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('used', instance.used);
  writeNotNull('remaining', instance.remaining);
  val['restricted'] = instance.restricted;
  return val;
}
