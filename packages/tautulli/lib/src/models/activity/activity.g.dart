// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliActivity _$TautulliActivityFromJson(Map<String, dynamic> json) {
  return TautulliActivity(
    streamCount:
        TautulliActivity._stringToInteger(json['stream_count'] as String),
    streamCountDirectPlay: json['stream_count_direct_play'] as int,
    streamCountDirectStream: json['stream_count_direct_stream'] as int,
    streamCountTranscode: json['stream_count_transcode'] as int,
    totalBandwidth: json['total_bandwidth'] as int,
    lanBandwidth: json['lan_bandwidth'] as int,
    wanBandwidth: json['wan_bandwidth'] as int,
    sessions: TautulliActivity._sessionsToObjectArray(json['sessions'] as List),
  );
}

Map<String, dynamic> _$TautulliActivityToJson(TautulliActivity instance) =>
    <String, dynamic>{
      'sessions': TautulliActivity._sessionsToMap(instance.sessions),
      'stream_count': TautulliActivity._integerToString(instance.streamCount),
      'stream_count_direct_play': instance.streamCountDirectPlay,
      'stream_count_direct_stream': instance.streamCountDirectStream,
      'stream_count_transcode': instance.streamCountTranscode,
      'total_bandwidth': instance.totalBandwidth,
      'lan_bandwidth': instance.lanBandwidth,
      'wan_bandwidth': instance.wanBandwidth,
    };
