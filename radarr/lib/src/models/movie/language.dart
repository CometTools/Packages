import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';

/// Store details about the language of the movie.
@JsonSerializable(explicitToJson: true)
class RadarrMovieLanguage {
    /// Language identifier
    @JsonKey(name: 'id')
    int id;

    /// Language name
    @JsonKey(name: 'name')
    String name;

    RadarrMovieLanguage({
        this.id,
        this.name,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeries] object.
    factory RadarrMovieLanguage.fromJson(Map<String, dynamic> json) => _$RadarrMovieLanguageFromJson(json);
    /// Serialize a [RadarrMovieLanguage] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieLanguageToJson(this);
}
