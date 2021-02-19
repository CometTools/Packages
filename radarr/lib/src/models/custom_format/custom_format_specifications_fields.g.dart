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
    RadarrCustomFormatSpecificationsFields instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order);
  writeNotNull('name', instance.name);
  writeNotNull('label', instance.label);
  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  writeNotNull('advanced', instance.advanced);
  return val;
}
