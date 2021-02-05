// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_specifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrCustomFormatSpecifications _$RadarrCustomFormatSpecificationsFromJson(
    Map<String, dynamic> json) {
  return RadarrCustomFormatSpecifications(
    name: json['name'] as String,
    implementation: json['implementation'] as String,
    implementationName: json['implementationName'] as String,
    infoLink: json['infoLink'] as String,
    negate: json['negate'] as bool,
    required: json['required'] as bool,
    fields: (json['fields'] as List)
        ?.map((e) => e == null
            ? null
            : RadarrCustomFormatSpecificationsFields.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RadarrCustomFormatSpecificationsToJson(
        RadarrCustomFormatSpecifications instance) =>
    <String, dynamic>{
      'name': instance.name,
      'implementation': instance.implementation,
      'implementationName': instance.implementationName,
      'infoLink': instance.infoLink,
      'negate': instance.negate,
      'required': instance.required,
      'fields': instance.fields?.map((e) => e?.toJson())?.toList(),
    };
