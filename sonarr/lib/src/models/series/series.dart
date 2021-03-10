import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:sonarr/types.dart';
import 'package:sonarr/utilities.dart';
import 'alternate_title.dart';
import 'image.dart';
import 'rating.dart';
import 'season.dart';

part 'series.g.dart';

/// Model for a single series data from Sonarr.
@JsonSerializable(explicitToJson: true)
class SonarrSeries {
    /// Title of the series
    @JsonKey(name: 'title')
    String? title;

    /// List of [SonarrSeriesAlternateTitle] objects to store alternate titles
    @JsonKey(name: 'alternateTitles')
    List<SonarrSeriesAlternateTitle>? alternateTitles;

    /// Title used for sorting the series
    @JsonKey(name: 'sortTitle')
    String? sortTitle;

    /// Total amount of seasons
    @JsonKey(name: 'seasonCount')
    int? seasonCount;

    /// Total amount of episodes in this series, including episodes not aired
    @JsonKey(name: 'totalEpisodeCount')
    int? totalEpisodeCount;

    /// Amount of episodes available
    @JsonKey(name: 'episodeCount')
    int? episodeCount;

    /// Amount of episode files available
    @JsonKey(name: 'episodeFileCount')
    int? episodeFileCount;

    /// Size of this series, in bytes
    @JsonKey(name: 'sizeOnDisk')
    int? sizeOnDisk;

    /// Status of the series
    @JsonKey(name: 'status')
    String? status;

    /// Summary/overview of the series
    @JsonKey(name: 'overview')
    String? overview;

    /// Date that the next episode will air
    @JsonKey(name: 'nextAiring', toJson: SonarrUtilities.dateTimeToJson, fromJson: SonarrUtilities.dateTimeFromJson)
    DateTime? nextAiring;

    /// Date that the previous episode aired on
    @JsonKey(name: 'previousAiring', toJson: SonarrUtilities.dateTimeToJson, fromJson: SonarrUtilities.dateTimeFromJson)
    DateTime? previousAiring;

    /// Network that hosts the series
    @JsonKey(name: 'network')
    String? network;

    /// Time which the series airs at
    @JsonKey(name: 'airTime')
    String? airTime;

    /// List of [SonarrSeriesImage] objects to store available images
    @JsonKey(name: 'images')
    List<SonarrSeriesImage>? images;

    /// List of [SonarrSeriesSeason] objects to store season data
    @JsonKey(name: 'seasons')
    List<SonarrSeriesSeason>? seasons;

    /// Year that the series premiered
    @JsonKey(name: 'year')
    int? year;

    /// Path to the series' files
    @JsonKey(name: 'path')
    String? path;

    /// Profile ID for the series
    @JsonKey(name: 'profileId')
    int? profileId;

    /// Language profile ID for the series
    @JsonKey(name: 'languageProfileId')
    int? languageProfileId;

    /// Are season folders being used?
    @JsonKey(name: 'seasonFolder')
    bool? seasonFolder;

    /// Is the series monitored?
    @JsonKey(name: 'monitored')
    bool? monitored;

    /// Is the series using scene numbering?
    @JsonKey(name: 'useSceneNumbering')
    bool? useSceneNumbering;

    /// Runtime of an average episode in the series, in minutes
    @JsonKey(name: 'runtime')
    int? runtime;

    /// TVDB ID for the series
    @JsonKey(name: 'tvdbId')
    int? tvdbId;

    /// TVRage ID for the series
    @JsonKey(name: 'tvRageId')
    int? tvRageId;

    /// TVMaze ID for the series
    @JsonKey(name: 'tvMazeId')
    int? tvMazeId;

    /// Date that the series premiered
    @JsonKey(name: 'firstAired', toJson: SonarrUtilities.dateTimeToJson, fromJson: SonarrUtilities.dateTimeFromJson)
    DateTime? firstAired;

    /// Date that the series was last refreshed in Sonarr
    @JsonKey(name: 'lastInfoSync', toJson: SonarrUtilities.dateTimeToJson, fromJson: SonarrUtilities.dateTimeFromJson)
    DateTime? lastInfoSync;

    /// [SonarrSeriesType] to store the type of the series
    @JsonKey(name: 'seriesType', fromJson: SonarrUtilities.seriesTypeFromJson, toJson: SonarrUtilities.seriesTypeToJson)
    SonarrSeriesType? seriesType;

    /// Title with any special characters removed
    @JsonKey(name: 'cleanTitle')
    String? cleanTitle;

    /// IMDB ID of the series
    @JsonKey(name: 'imdbId')
    String? imdbId;

    /// Title slug, used for routing to the series via URL
    @JsonKey(name: 'titleSlug')
    String? titleSlug;

    /// Content rating of the series
    @JsonKey(name: 'certification')
    String? certification;

    /// List of genres for the series
    @JsonKey(name: 'genres')
    List<String>? genres;

    /// List of tag IDs associated with the series
    @JsonKey(name: 'tags')
    List<int>? tags;

    /// Date that the series was added to Sonarr
    @JsonKey(name: 'added', toJson: SonarrUtilities.dateTimeToJson, fromJson: SonarrUtilities.dateTimeFromJson)
    DateTime? added;

    /// [SonarrSeriesRating] object to store rating information
    @JsonKey(name: 'ratings')
    SonarrSeriesRating? ratings;

    /// Quality profile ID for the series
    @JsonKey(name: 'qualityProfileId')
    int? qualityProfileId;

    /// The unique ID for the series in Sonarr
    @JsonKey(name: 'id')
    int? id;

    SonarrSeries({
        this.title,
        this.alternateTitles,
        this.sortTitle,
        this.seasonCount,
        this.totalEpisodeCount,
        this.episodeCount,
        this.episodeFileCount,
        this.sizeOnDisk,
        this.status,
        this.overview,
        this.nextAiring,
        this.previousAiring,
        this.network,
        this.airTime,
        this.images,
        this.seasons,
        this.year,
        this.path,
        this.profileId,
        this.languageProfileId,
        this.seasonFolder,
        this.monitored,
        this.useSceneNumbering,
        this.runtime,
        this.tvMazeId,
        this.tvRageId,
        this.tvdbId,
        this.firstAired,
        this.lastInfoSync,
        this.seriesType,
        this.cleanTitle,
        this.imdbId,
        this.titleSlug,
        this.certification,
        this.genres,
        this.tags,
        this.added,
        this.ratings,
        this.qualityProfileId,
        this.id,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeries] object.
    factory SonarrSeries.fromJson(Map<String, dynamic> json) => _$SonarrSeriesFromJson(json);
    /// Serialize a [SonarrSeries] object to a JSON map.
    Map<String, dynamic> toJson() => _$SonarrSeriesToJson(this);
}
