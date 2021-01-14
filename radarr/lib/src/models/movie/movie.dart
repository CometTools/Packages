import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:radarr/utilities.dart';
import 'alternate_titles.dart';
import 'collection.dart';
import 'image.dart';
import 'movie_file.dart';
import 'rating.dart';

part 'movie.g.dart';

/// Model for a single movie data from Radarr.
@JsonSerializable(explicitToJson: true)
class RadarrMovie {
    /// Title of the movie
    @JsonKey(name: 'title')
    String title;

    /// If the original language of the movie is not English, then the original title
    @JsonKey(name: 'originalTitle')
    String originalTitle;

    /// Alternative titles available for the movie
    @JsonKey(name: 'alternateTitles')
    List<RadarrMovieAlternateTitles> alternateTitles;

    /// Source ID for secondary year
    @JsonKey(name: 'secondaryYearSourceId')
    int secondaryYearSourceId;
    
    /// Title for sorting
    @JsonKey(name: 'sortTitle')
    String sortTitle;

    /// Size in bytes of the file (if available)
    @JsonKey(name: 'sizeOnDisk')
    int sizeOnDisk;

    /// Status of the movie
    /// TODO
    @JsonKey(name: 'status')
    String status;

    /// Overview of the movie
    @JsonKey(name: 'overview')
    String overview;

    /// Date the movie is/was released to cinemas
    @JsonKey(name: 'inCinemas', toJson: RadarrUtilities.dateTimeToJson, fromJson: RadarrUtilities.dateTimeFromJson)
    DateTime inCinemas;

    /// Date that the movie is/was physically released
    @JsonKey(name: 'physicalRelease', toJson: RadarrUtilities.dateTimeToJson, fromJson: RadarrUtilities.dateTimeFromJson)
    DateTime physicalRelease;

    /// Date that the movie is/was digitally released
    @JsonKey(name: 'digitalRelease', toJson: RadarrUtilities.dateTimeToJson, fromJson: RadarrUtilities.dateTimeFromJson)
    DateTime digitalRelease;

    /// List of [RadarrMovieImage] objects containing details on available images
    @JsonKey(name: 'images')
    List<RadarrMovieImage> images;

    /// Main website for the movie
    @JsonKey(name: 'website')
    String website;

    /// Year the movie was released
    @JsonKey(name: 'year')
    int year;

    /// Does the movie have an available image?
    @JsonKey(name: 'hasFile')
    bool hasFile;

    /// YouTube trailer identifier
    @JsonKey(name: 'youTubeTrailerId')
    String youTubeTrailerId;

    /// Production studio
    @JsonKey(name: 'studio')
    String studio;

    /// Movie file path
    @JsonKey(name: 'path')
    String path;

    /// Quality profile identifier
    @JsonKey(name: 'qualityProfileId')
    int qualityProfileId;

    /// Is the movie being monitored?
    @JsonKey(name: 'monitored')
    bool monitored;

    /// Minimum availability value
    /// TODO
    @JsonKey(name: 'minimumAvailability')
    String minimumAvailability;

    /// Is the content available?
    @JsonKey(name: 'isAvailable')
    bool isAvailable;

    /// Movie folder name
    @JsonKey(name: 'folderName')
    String folderName;

    /// Runtime length (in minutes)
    @JsonKey(name: 'runtime')
    int runtime;

    /// Clean movie title without accents or special characters
    @JsonKey(name: 'cleanTitle')
    String cleanTitle;

    /// IMDb movie identifier
    @JsonKey(name: 'imdbId')
    String imdbId;

    /// TMDB movie identifier
    @JsonKey(name: 'tmdbId')
    int tmdbId;

    /// Title slug for Radarr web GUI's URL
    @JsonKey(name: 'titleSlug')
    String titleSlug;

    /// Certification rating
    @JsonKey(name: 'certification')
    String certification;

    /// List of genres
    @JsonKey(name: 'genres')
    List<String> genres;

    /// List of tag identifiers
    @JsonKey(name: 'tags')
    List<int> tags;

    /// Date that the movie was added to Radarr
    @JsonKey(name: 'added', toJson: RadarrUtilities.dateTimeToJson, fromJson: RadarrUtilities.dateTimeFromJson)
    DateTime added;

    /// Rating values for the movie
    @JsonKey(name: 'ratings')
    RadarrMovieRating ratings;

    /// If there is a movie file available, details on the file
    @JsonKey(name: 'movieFile')
    RadarrMovieFile movieFile;

    /// Details about what collection the movie is within
    @JsonKey(name: 'collection')
    RadarrMovieCollection collection;

    /// Movie identifier in Radarr
    @JsonKey(name: 'id')
    int id;

    RadarrMovie({
        this.title,
        this.originalTitle,
        this.alternateTitles,
        this.secondaryYearSourceId,
        this.sortTitle,
        this.sizeOnDisk,
        this.status,
        this.overview,
        this.inCinemas,
        this.physicalRelease,
        this.digitalRelease,
        this.images,
        this.website,
        this.year,
        this.hasFile,
        this.youTubeTrailerId,
        this.studio,
        this.path,
        this.qualityProfileId,
        this.monitored,
        this.minimumAvailability,
        this.isAvailable,
        this.folderName,
        this.runtime,
        this.cleanTitle,
        this.imdbId,
        this.tmdbId,
        this.titleSlug,
        this.certification,
        this.genres,
        this.tags,
        this.added,
        this.ratings,
        this.movieFile,
        this.collection,
        this.id,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeries] object.
    factory RadarrMovie.fromJson(Map<String, dynamic> json) => _$RadarrMovieFromJson(json);
    /// Serialize a [RadarrMovie] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieToJson(this);
}
