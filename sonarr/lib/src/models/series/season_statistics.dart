import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:sonarr/utilities.dart';

part 'season_statistics.g.dart';

/// Model for a series' season statistics from Sonarr.
@JsonSerializable(explicitToJson: true)
class SonarrSeriesSeasonStatistics {
    /// Date of the last aired episode
    @JsonKey(name: 'previousAiring', toJson: SonarrUtilities.dateTimeToJson, fromJson: SonarrUtilities.dateTimeFromJson)
    DateTime? previousAiring;

    /// Date of the next/upcoming episode
    @JsonKey(name: 'nextAiring', toJson: SonarrUtilities.dateTimeToJson, fromJson: SonarrUtilities.dateTimeFromJson)
    DateTime? nextAiring;

    /// Amount of episode files available
    @JsonKey(name: 'episodeFileCount')
    int? episodeFileCount;

    /// Amount of episodes available
    @JsonKey(name: 'episodeCount')
    int? episodeCount;

    /// Total amount of episodes in this season, including episodes not aired
    @JsonKey(name: 'totalEpisodeCount')
    int? totalEpisodeCount;

    /// Size of this season, in bytes
    @JsonKey(name: 'sizeOnDisk')
    int? sizeOnDisk;

    /// Percentage of episodes available
    @JsonKey(name: 'percentOfEpisodes')
    double? percentOfEpisodes;

    SonarrSeriesSeasonStatistics({
        this.previousAiring,
        this.nextAiring,
        this.episodeFileCount,
        this.episodeCount,
        this.totalEpisodeCount,
        this.sizeOnDisk,
        this.percentOfEpisodes,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeriesSeasonStatistics] object.
    factory SonarrSeriesSeasonStatistics.fromJson(Map<String, dynamic> json) => _$SonarrSeriesSeasonStatisticsFromJson(json);
    /// Serialize a [SonarrSeriesSeasonStatistics] object to a JSON map.
    Map<String, dynamic> toJson() => _$SonarrSeriesSeasonStatisticsToJson(this);
}
