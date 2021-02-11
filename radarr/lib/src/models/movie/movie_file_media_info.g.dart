// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file_media_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrMovieFileMediaInfo _$RadarrMovieFileMediaInfoFromJson(
    Map<String, dynamic> json) {
  return RadarrMovieFileMediaInfo(
    audioAdditionalFeatures: json['audioAdditionalFeatures'] as String,
    audioBitrate: json['audioBitrate'] as int,
    audioChannels: (json['audioChannels'] as num)?.toDouble(),
    audioCodec: json['audioCodec'] as String,
    audioLanguages: json['audioLanguages'] as String,
    audioStreamCount: json['audioStreamCount'] as int,
    videoBitDepth: json['videoBitDepth'] as int,
    videoBitrate: json['videoBitrate'] as int,
    videoCodec: json['videoCodec'] as String,
    videoFps: (json['videoFps'] as num)?.toDouble(),
    resolution: json['resolution'] as String,
    runTime: json['runTime'] as String,
    scanType: json['scanType'] as String,
    subtitles: json['subtitles'] as String,
  );
}

Map<String, dynamic> _$RadarrMovieFileMediaInfoToJson(
        RadarrMovieFileMediaInfo instance) =>
    <String, dynamic>{
      'audioAdditionalFeatures': instance.audioAdditionalFeatures,
      'audioBitrate': instance.audioBitrate,
      'audioChannels': instance.audioChannels,
      'audioCodec': instance.audioCodec,
      'audioLanguages': instance.audioLanguages,
      'audioStreamCount': instance.audioStreamCount,
      'videoBitDepth': instance.videoBitDepth,
      'videoBitrate': instance.videoBitrate,
      'videoCodec': instance.videoCodec,
      'videoFps': instance.videoFps,
      'resolution': instance.resolution,
      'runTime': instance.runTime,
      'scanType': instance.scanType,
      'subtitles': instance.subtitles,
    };
