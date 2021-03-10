import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'movie_file_quality_quality.g.dart';

/// Model for an movie file's quality profile's quality.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RadarrMovieFileQualityQuality {
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

    RadarrMovieFileQualityQuality({
        this.id,
        this.name,
        this.source,
        this.resolution,
        this.modifier,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrMovieFileQualityQuality] object.
    factory RadarrMovieFileQualityQuality.fromJson(Map<String, dynamic> json) => _$RadarrMovieFileQualityQualityFromJson(json);
    /// Serialize a [RadarrMovieFileQualityQuality] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieFileQualityQualityToJson(this);
}
