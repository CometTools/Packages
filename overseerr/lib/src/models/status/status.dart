import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OverseerrStatus {
  @JsonKey(name: 'version')
  String version;

  @JsonKey(name: 'commitTag')
  String commitTag;

  @JsonKey(name: 'updateAvailable')
  bool updateAvailable;

  @JsonKey(name: 'commitsBehind')
  int commitsBehind;

  OverseerrStatus({
    required this.version,
    required this.commitTag,
    required this.updateAvailable,
    required this.commitsBehind,
  });

  /// Returns a JSON-encoded string version of this object.
  @override
  String toString() => json.encode(this.toJson());

  /// Deserialize a JSON map to a [OverseerrStatus] object.
  factory OverseerrStatus.fromJson(Map<String, dynamic> json) =>
      _$OverseerrStatusFromJson(json);

  /// Serialize a [OverseerrStatus] object to a JSON map.
  Map<String, dynamic> toJson() => _$OverseerrStatusToJson(this);
}
