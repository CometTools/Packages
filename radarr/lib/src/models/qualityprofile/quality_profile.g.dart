// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrQualityProfile _$RadarrQualityProfileFromJson(Map<String, dynamic> json) {
  return RadarrQualityProfile(
    name: json['name'] as String,
    upgradeAllowed: json['upgradeAllowed'] as bool,
    cutoff: json['cutoff'] as int,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrQualityProfileItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    minFormatScore: json['minFormatScore'] as int,
    cutoffFormatScore: json['cutoffFormatScore'] as int,
    formatItems: (json['formatItems'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrQualityProfileFormatItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    language: json['language'] == null
        ? null
        : RadarrLanguage.fromJson(json['language'] as Map<String, dynamic>),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrQualityProfileToJson(
        RadarrQualityProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'upgradeAllowed': instance.upgradeAllowed,
      'cutoff': instance.cutoff,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'minFormatScore': instance.minFormatScore,
      'cutoffFormatScore': instance.cutoffFormatScore,
      'formatItems': instance.formatItems?.map((e) => e?.toJson())?.toList(),
      'language': instance.language?.toJson(),
      'id': instance.id,
    };
