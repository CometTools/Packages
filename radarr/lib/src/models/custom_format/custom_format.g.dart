// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrCustomFormat _$RadarrCustomFormatFromJson(Map<String, dynamic> json) {
  return RadarrCustomFormat(
    id: json['id'] as int,
    name: json['name'] as String,
    includeCustomFormatWhenRenaming:
        json['includeCustomFormatWhenRenaming'] as bool,
    specifications: (json['specifications'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrCustomFormatSpecifications.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RadarrCustomFormatToJson(RadarrCustomFormat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'includeCustomFormatWhenRenaming':
          instance.includeCustomFormatWhenRenaming,
      'specifications':
          instance.specifications?.map((e) => e?.toJson())?.toList(),
    };
