import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'season_statistics.dart';

part 'season.g.dart';

/// Model for a series' season from Sonarr.
@JsonSerializable(explicitToJson: true)
class SonarrSeriesSeason {
    /// Season number
    @JsonKey(name: 'seasonNumber')
    int? seasonNumber;

    /// Is the season being monitored?
    @JsonKey(name: 'monitored')
    bool? monitored;

    /// Model storing statistical information about the season
    @JsonKey(name: 'statistics')
    SonarrSeriesSeasonStatistics? statistics;

    SonarrSeriesSeason({
        this.seasonNumber,
        this.monitored,
        this.statistics,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeriesSeason] object.
    factory SonarrSeriesSeason.fromJson(Map<String, dynamic> json) => _$SonarrSeriesSeasonFromJson(json);
    /// Serialize a [SonarrSeriesSeason] object to a JSON map.
    Map<String, dynamic> toJson() => _$SonarrSeriesSeasonToJson(this);
}
