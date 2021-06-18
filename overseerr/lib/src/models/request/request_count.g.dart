// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverseerrRequestCount _$OverseerrRequestCountFromJson(
    Map<String, dynamic> json) {
  return OverseerrRequestCount(
    pending: json['pending'] as int,
    approved: json['approved'] as int,
    processing: json['processing'] as int,
    available: json['available'] as int,
  );
}

Map<String, dynamic> _$OverseerrRequestCountToJson(
        OverseerrRequestCount instance) =>
    <String, dynamic>{
      'pending': instance.pending,
      'approved': instance.approved,
      'processing': instance.processing,
      'available': instance.available,
    };
