import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'language.dart';

part 'alternate_titles.g.dart';

/// Store details about alternate titles available for a movie.
@JsonSerializable(explicitToJson: true)
class RadarrMovieAlternateTitles {
    /// Title source
    @JsonKey(name: 'sourceType')
    String sourceType;

    /// Movie ID
    @JsonKey(name: 'movieId')
    int movieId;

    /// Alternative movie title
    @JsonKey(name: 'title')
    String title;

    /// Source title identifier
    @JsonKey(name: 'sourceId')
    int sourceId;

    /// Votes
    @JsonKey(name: 'votes')
    int votes;

    /// Vote count
    @JsonKey(name: 'voteCount')
    int voteCount;

    @JsonKey(name: 'language')
    RadarrMovieLanguage language;

    /// Radarr identifier for the alternative title
    @JsonKey(name: 'id')
    int id;

    RadarrMovieAlternateTitles({
        this.sourceType,
        this.movieId,
        this.title,
        this.sourceId,
        this.votes,
        this.voteCount,
        this.language,
        this.id,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeries] object.
    factory RadarrMovieAlternateTitles.fromJson(Map<String, dynamic> json) => _$RadarrMovieAlternateTitlesFromJson(json);
    /// Serialize a [RadarrMovieAlternateTitles] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieAlternateTitlesToJson(this);
}
