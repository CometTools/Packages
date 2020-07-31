import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'history_record.dart';

part 'history.g.dart';

/// Model for history data from Tautulli.
/// 
/// Each individual session history is stored in `records`, with each history record being a [TautulliHistoryRecord].
@JsonSerializable(explicitToJson: true)
class TautulliHistory {
    /// List of [TautulliHistoryRecord], each storing a single session history.
    @JsonKey(name: 'data', fromJson: _entriesToObjectArray, toJson: _entriesToMap)
    final List<TautulliHistoryRecord> records;

    /// _Unknown_
    @JsonKey(name: 'draw')
    final int draw;

    /// Total amount of records returned.
    @JsonKey(name: 'recordsTotal')
    final int recordsTotal;

    /// The amount of records filtered.
    @JsonKey(name: 'recordsFiltered')
    final int recordsFiltered;

    /// The duration of the records (total) retrieved, as a preformatted string.
    @JsonKey(name: 'total_duration')
    final String totalDuration;

    /// The duration of the records (filtered) retrieved, as a preformatted string.
    @JsonKey(name: 'filter_duration')
    final String filterDuration;

    TautulliHistory({
        this.records,
        this.draw,
        this.recordsTotal,
        this.recordsFiltered,
        this.totalDuration,
        this.filterDuration,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /** JSON (De)Serialization Related */

    factory TautulliHistory.fromJson(Map<String, dynamic> json) => _$TautulliHistoryFromJson(json);
    Map<String, dynamic> toJson() => _$TautulliHistoryToJson(this);

    static List<TautulliHistoryRecord> _entriesToObjectArray(List<dynamic> entries) => entries.map((entry) => TautulliHistoryRecord.fromJson((entry as Map<String, dynamic>))).toList();
    static List<Map<String, dynamic>> _entriesToMap(List<TautulliHistoryRecord> entries) => entries.map((entry) => entry.toJson()).toList();
}
