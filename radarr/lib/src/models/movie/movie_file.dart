import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:radarr/utilities.dart';
import 'language.dart';
import 'movie_file_quality.dart';
import 'movie_file_media_info.dart';

part 'movie_file.g.dart';

/// Model for a movies' file information
@JsonSerializable(explicitToJson: true)
class RadarrMovieFile {
    /// Movie identifier
    @JsonKey(name: 'movieId')
    int movieId;

    /// Relative movie path to the folder
    @JsonKey(name: 'relativePath')
    String relativePath;
    
    /// Full movie file path
    @JsonKey(name: 'path')
    String path;

    /// Size of the file in bytes
    @JsonKey(name: 'size')
    int size;

    /// Date the file was added
    @JsonKey(name: 'dateAdded', toJson: RadarrUtilities.dateTimeToJson, fromJson: RadarrUtilities.dateTimeFromJson)
    DateTime dateAdded;

    /// Indexer flags
    @JsonKey(name: 'indexerFlags')
    int indexerFlags;

    /// [RadarrMovieFileQuality] object containing movie quality profile details
    @JsonKey(name: 'quality')
    RadarrMovieFileQuality quality;

    /// [RadarrMovieFileMediaInfo] object containing the media codec information
    @JsonKey(name: 'mediaInfo')
    RadarrMovieFileMediaInfo mediaInfo;

    /// Is the quality profile for the movie not met?
    @JsonKey(name: 'qualityCutoffNotMet')
    bool qualityCutoffNotMet;

    /// List of [RadarrMovieLanguage] objects with language information
    @JsonKey(name: 'languages')
    List<RadarrMovieLanguage> languages;

    /// Movie file edition
    @JsonKey(name: 'edition')
    String edition;

    /// Movie file identifier
    @JsonKey(name: 'id')
    int id;

    RadarrMovieFile({
        this.movieId,
        this.relativePath,
        this.path,
        this.size,
        this.dateAdded,
        this.indexerFlags,
        this.quality,
        this.mediaInfo,
        this.qualityCutoffNotMet,
        this.languages,
        this.edition,
        this.id,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrMovieFile] object.
    factory RadarrMovieFile.fromJson(Map<String, dynamic> json) => _$RadarrMovieFileFromJson(json);
    /// Serialize a [RadarrMovieFile] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieFileToJson(this);
}
