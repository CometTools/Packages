import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'custom_format_specifications_fields.g.dart';

/// Model for a custom format from Radarr.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RadarrCustomFormatSpecificationsFields {
    @JsonKey(name: 'order')
    int order;
    
    @JsonKey(name: 'name')
    String name;

    @JsonKey(name: 'label')
    String label;

    @JsonKey(name: 'value')
    String value;

    @JsonKey(name: 'type')
    String type;

    @JsonKey(name: 'advanced')
    bool advanced;

    RadarrCustomFormatSpecificationsFields({
        this.order,
        this.name,
        this.label,
        this.value,
        this.type,
        this.advanced,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrCustomFormatSpecificationsFields] object.
    factory RadarrCustomFormatSpecificationsFields.fromJson(Map<String, dynamic> json) => _$RadarrCustomFormatSpecificationsFieldsFromJson(json);
    /// Serialize a [RadarrCustomFormatSpecificationsFields] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrCustomFormatSpecificationsFieldsToJson(this);
}
