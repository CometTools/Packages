import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'rating.g.dart';

/// Model for movies rating values.
@JsonSerializable(explicitToJson: true)
class RadarrMovieRating {
    /// Number of votes for the rating score
    @JsonKey(name: 'votes')
    int votes;

    /// Final score/value of the rating
    @JsonKey(name: 'value')
    double value;

    RadarrMovieRating({
        this.votes,
        this.value,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrMovieRating] object.
    factory RadarrMovieRating.fromJson(Map<String, dynamic> json) => _$RadarrMovieRatingFromJson(json);
    /// Serialize a [RadarrMovieRating] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieRatingToJson(this);
}
