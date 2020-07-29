import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/utilities.dart';
import 'session.dart';

part 'activity.g.dart';

/// Model for activity data from Tautulli.
/// 
/// Each individual session data is stored in `sessions`, with each session being a [TautulliSession].
@JsonSerializable(explicitToJson: true)
class TautulliActivity {
    /// List of [TautulliSession], each storing a single active session.
    @JsonKey(name: 'sessions', fromJson: _sessionsToObjectArray, toJson: _sessionsToMap)
    final List<TautulliSession> sessions;
    
    /// Total number of active streams.
    @JsonKey(name: 'stream_count', fromJson: TautulliUtilities.stringToInteger, toJson: TautulliUtilities.integerToString)
    final int streamCount;

    /// Total number of _direct play_ active streams.
    @JsonKey(name: 'stream_count_direct_play')
    final int streamCountDirectPlay;

    /// Total number of _direct stream_ active streams.
    @JsonKey(name: 'stream_count_direct_stream')
    final int streamCountDirectStream;

    /// Total number of _transcode_ active streams.
    @JsonKey(name: 'stream_count_transcode')
    final int streamCountTranscode;

    /// Total bandwidth usage by all streams.
    @JsonKey(name: 'total_bandwidth')
    final int totalBandwidth;

    /// Total bandwidth usage on your local area network (internal, LAN).
    @JsonKey(name: 'lan_bandwidth')
    final int lanBandwidth;

    /// Total bandwidth usage on your wide area network (external, WAN).
    @JsonKey(name: 'wan_bandwidth')
    final int wanBandwidth;

    TautulliActivity({
        this.streamCount,
        this.streamCountDirectPlay,
        this.streamCountDirectStream,
        this.streamCountTranscode,
        this.totalBandwidth,
        this.lanBandwidth,
        this.wanBandwidth,
        this.sessions,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /** JSON (De)Serialization Related */

    factory TautulliActivity.fromJson(Map<String, dynamic> json) => _$TautulliActivityFromJson(json);
    Map<String, dynamic> toJson() => _$TautulliActivityToJson(this);

    static List<TautulliSession> _sessionsToObjectArray(List<dynamic> sessions) => sessions.map((session) => TautulliSession.fromJson((session as Map<String, dynamic>))).toList();
    static List<Map<String, dynamic>> _sessionsToMap(List<TautulliSession> sessions) => sessions.map((session) => session.toJson()).toList();
}
