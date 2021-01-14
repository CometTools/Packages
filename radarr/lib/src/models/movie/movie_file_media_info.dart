import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'movie_file_media_info.g.dart';

/// Store details about the language of the movie.
@JsonSerializable(explicitToJson: true)
class RadarrMovieFileMediaInfo {
    /// Audio additional features
    @JsonKey(name: 'audioAdditionalFeatures')
    String audioAdditionalFeatures;

    /// Audio bitrate
    @JsonKey(name: 'audioBitrate')
    int audioBitrate;

    /// Audio channels
    @JsonKey(name: 'audioChannels')
    double audioChannels;

    /// Audio codec
    @JsonKey(name: 'audioCodec')
    String audioCodec;

    /// Audio languages
    @JsonKey(name: 'audioLanguages')
    String audioLanguages;

    /// Audio stream count
    @JsonKey(name: 'audioStreamCount')
    int audioStreamCount;

    /// Video bit depth
    @JsonKey(name: 'videoBitDepth')
    int videoBitDepth;

    /// Video bitrate
    @JsonKey(name: 'videoBitrate')
    int videoBitrate;

    /// Video codec
    @JsonKey(name: 'videoCodec')
    String videoCodec;

    /// Video frames per second
    @JsonKey(name: 'videoFps')
    double videoFps;

    /// Video resolution
    @JsonKey(name: 'resolution')
    String resolution;

    /// Movie runtime
    @JsonKey(name: 'runTime')
    String runTime;

    /// Video scan type
    @JsonKey(name: 'scanType')
    String scanType;

    /// List of subtitle languages
    @JsonKey(name: 'subtitles')
    String subtitles;

    RadarrMovieFileMediaInfo({
        this.audioAdditionalFeatures,
        this.audioBitrate,
        this.audioChannels,
        this.audioCodec,
        this.audioLanguages,
        this.audioStreamCount,
        this.videoBitDepth,
        this.videoBitrate,
        this.videoCodec,
        this.videoFps,
        this.resolution,
        this.runTime,
        this.scanType,
        this.subtitles,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeries] object.
    factory RadarrMovieFileMediaInfo.fromJson(Map<String, dynamic> json) => _$RadarrMovieFileMediaInfoFromJson(json);
    /// Serialize a [RadarrMovieFileMediaInfo] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrMovieFileMediaInfoToJson(this);
}
