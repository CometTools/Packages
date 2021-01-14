import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'movie_file_quality_quality.g.dart';

/// Model for an movie file's quality profile's quality.
@JsonSerializable(explicitToJson: true)
class RadarrMovieFileQualityQuality {
    /// Identifier of the quality profile
    @JsonKey(name: 'id')
    int id;

    /// Name of the quality profile
    @JsonKey(name: 'name')
    String name;

    /// Source
    @JsonKey(name: 'source')
    String source;

    /// Source resolution
    @JsonKey(name: 'resolution')
    int resolution;

    /// Modifier
    @JsonKey(name: 'modifier')
    String modifier;

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
