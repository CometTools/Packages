import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'movie_file_quality_quality.dart';
import 'movie_file_quality_revision.dart';

part 'movie_file_quality.g.dart';

/// Model for an movie file's quality profile.
@JsonSerializable(explicitToJson: true)
class RadarrMovieFileQuality {
    /// [RadarrMovieFileQualityQuality] object containing the quality profile
    @JsonKey(name: 'quality')
    RadarrMovieFileQualityQuality quality;

    /// [RadarrMovieFileQualityRevision] object containing the revision information
    @JsonKey(name: 'revision')
    RadarrMovieFileQualityRevision revision;

    RadarrMovieFileQuality({
        this.quality,
        this.revision,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrMovieFileQuality] object.
    factory RadarrMovieFileQuality.fromJson(Map<String, dynamic> json) => _$RadarrMovieFileQualityFromJson(json);
    /// Serialize a [RadarrMovieFileQuality] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieFileQualityToJson(this);
}
