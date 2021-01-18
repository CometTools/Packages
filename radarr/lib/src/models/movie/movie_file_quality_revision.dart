import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'movie_file_quality_revision.g.dart';

/// Model for an movie file's quality profile's revision.
@JsonSerializable(explicitToJson: true)
class RadarrMovieFileQualityRevision {
    @JsonKey(name: 'version')
    int version;

    @JsonKey(name: 'real')
    int real;

    @JsonKey(name: 'isRepack')
    bool isRepack;

    RadarrMovieFileQualityRevision({
        this.version,
        this.real,
        this.isRepack,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrMovieFileQualityRevision] object.
    factory RadarrMovieFileQualityRevision.fromJson(Map<String, dynamic> json) => _$RadarrMovieFileQualityRevisionFromJson(json);
    /// Serialize a [RadarrMovieFileQualityRevision] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieFileQualityRevisionToJson(this);
}
