import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'queue_record.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RadarrQueueRecord {
    @JsonKey(name: 'movieId')
    int? movieId;

    RadarrQueueRecord({
        this.movieId,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [RadarrQueueRecord] object.
    factory RadarrQueueRecord.fromJson(Map<String, dynamic> json) => _$RadarrQueueRecordFromJson(json);
    /// Serialize a [RadarrQueueRecord] object to a JSON map.
    Map<String, dynamic> toJson() => _$RadarrQueueRecordToJson(this);
}
