import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'item_quality.g.dart';

/// Store details about a quality profile item.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RadarrQualityProfileItemQuality {
    @JsonKey(name: 'id')
    int? id;

    @JsonKey(name: 'name')
    String? name;

    @JsonKey(name: 'source')
    String? source;

    @JsonKey(name: 'resolution')
    int? resolution;

    @JsonKey(name: 'modifier')
    String? modifier;

    RadarrQualityProfileItemQuality({
        this.id,
        this.name,
        this.source,
        this.resolution,
        this.modifier,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrQualityProfileItemQuality] object.
    factory RadarrQualityProfileItemQuality.fromJson(Map<String, dynamic> json) => _$RadarrQualityProfileItemQualityFromJson(json);
    /// Serialize a [RadarrQualityProfileItemQuality] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrQualityProfileItemQualityToJson(this);
}
