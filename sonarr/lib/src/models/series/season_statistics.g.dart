// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SonarrSeriesSeasonStatistics _$SonarrSeriesSeasonStatisticsFromJson(
    Map<String, dynamic> json) {
  return SonarrSeriesSeasonStatistics(
    previousAiring:
        SonarrUtilities.dateTimeFromJson(json['previousAiring'] as String?),
    nextAiring: SonarrUtilities.dateTimeFromJson(json['nextAiring'] as String?),
    episodeFileCount: json['episodeFileCount'] as int?,
    episodeCount: json['episodeCount'] as int?,
    totalEpisodeCount: json['totalEpisodeCount'] as int?,
    sizeOnDisk: json['sizeOnDisk'] as int?,
    percentOfEpisodes: (json['percentOfEpisodes'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$SonarrSeriesSeasonStatisticsToJson(
        SonarrSeriesSeasonStatistics instance) =>
    <String, dynamic>{
      'previousAiring': SonarrUtilities.dateTimeToJson(instance.previousAiring),
      'nextAiring': SonarrUtilities.dateTimeToJson(instance.nextAiring),
      'episodeFileCount': instance.episodeFileCount,
      'episodeCount': instance.episodeCount,
      'totalEpisodeCount': instance.totalEpisodeCount,
      'sizeOnDisk': instance.sizeOnDisk,
      'percentOfEpisodes': instance.percentOfEpisodes,
    };
