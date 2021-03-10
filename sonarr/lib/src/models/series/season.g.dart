// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SonarrSeriesSeason _$SonarrSeriesSeasonFromJson(Map<String, dynamic> json) {
  return SonarrSeriesSeason(
    seasonNumber: json['seasonNumber'] as int?,
    monitored: json['monitored'] as bool?,
    statistics: json['statistics'] == null
        ? null
        : SonarrSeriesSeasonStatistics.fromJson(
            json['statistics'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SonarrSeriesSeasonToJson(SonarrSeriesSeason instance) =>
    <String, dynamic>{
      'seasonNumber': instance.seasonNumber,
      'monitored': instance.monitored,
      'statistics': instance.statistics?.toJson(),
    };
