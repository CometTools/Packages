import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'date_format.g.dart';

/// Model to store the date and time formats.
@JsonSerializable()
class TautulliDateFormat {
    /// Date format.
    @JsonKey(name: 'date_format')
    final String dateFormat;

    /// Time format.
    @JsonKey(name: 'time_format')
    final String timeFormat;

    TautulliDateFormat({
        this.dateFormat,
        this.timeFormat,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /** JSON (De)Serialization Related */

    factory TautulliDateFormat.fromJson(Map<String, dynamic> json) => _$TautulliDateFormatFromJson(json);
    Map<String, dynamic> toJson() => _$TautulliDateFormatToJson(this);
}