import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'quota.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OverseerrQuota {
  @JsonKey(name: 'days')
  int days;

  @JsonKey(name: 'limit')
  int limit;

  @JsonKey(name: 'used')
  int? used;

  @JsonKey(name: 'remaining')
  int? remaining;

  @JsonKey(name: 'restricted')
  bool restricted;

  OverseerrQuota({
    required this.days,
    required this.limit,
    this.used,
    this.remaining,
    required this.restricted,
  });

  /// Returns a JSON-encoded string version of this object.
  @override
  String toString() => json.encode(this.toJson());

  /// Deserialize a JSON map to a [OverseerrQuota] object.
  factory OverseerrQuota.fromJson(Map<String, dynamic> json) =>
      _$OverseerrQuotaFromJson(json);

  /// Serialize a [OverseerrQuota] object to a JSON map.
  Map<String, dynamic> toJson() => _$OverseerrQuotaToJson(this);
}
