// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_specifications_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrCustomFormatSpecificationsFields
    _$RadarrCustomFormatSpecificationsFieldsFromJson(
        Map<String, dynamic> json) {
  return RadarrCustomFormatSpecificationsFields(
    order: json['order'] as int,
    name: json['name'] as String,
    label: json['label'] as String,
    value: json['value'] as String,
    type: json['type'] as String,
    advanced: json['advanced'] as bool,
  );
}

Map<String, dynamic> _$RadarrCustomFormatSpecificationsFieldsToJson(
        RadarrCustomFormatSpecificationsFields instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
      'label': instance.label,
      'value': instance.value,
      'type': instance.type,
      'advanced': instance.advanced,
    };
