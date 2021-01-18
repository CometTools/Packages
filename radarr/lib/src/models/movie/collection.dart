import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'collection.g.dart';

/// Store details about a collection the movie is apart of.
@JsonSerializable(explicitToJson: true)
class RadarrMovieCollection {
    @JsonKey(name: 'name')
    String name;

    @JsonKey(name: 'tmdbId')
    int tmdbId;

    RadarrMovieCollection({
        this.name,
        this.tmdbId,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeries] object.
    factory RadarrMovieCollection.fromJson(Map<String, dynamic> json) => _$RadarrMovieCollectionFromJson(json);
    /// Serialize a [RadarrMovieCollection] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieCollectionToJson(this);
}
