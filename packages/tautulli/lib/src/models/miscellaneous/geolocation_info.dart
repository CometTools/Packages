import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'geolocation_info.g.dart';

/// Model to store the geolocation information for an IP address.
@JsonSerializable()
class TautulliGeolocationInfo {
    /// Country code.
    @JsonKey(name: 'code')
    final String code;

    /// Country.
    @JsonKey(name: 'country')
    final String country;

    /// Region within the country.
    @JsonKey(name: 'region')
    final String region;

    /// City within the region.
    @JsonKey(name: 'city')
    final String city;

    /// Postal code.
    @JsonKey(name: 'postal_code')
    final String postalCode;

    /// Timezone.
    @JsonKey(name: 'timezone')
    final String timezone;

    /// Approximate latitude coordinate
    @JsonKey(name: 'latitude')
    final double latitude;

    /// Approximate longitude coordinate
    @JsonKey(name: 'longitude')
    final double longitude;

    /// Approximate accuracy
    @JsonKey(name: 'accuracy')
    final double accuracy;

    /// Content of the IP address.
    @JsonKey(name: 'continent')
    final String continent;

    TautulliGeolocationInfo({
        this.code,
        this.country,
        this.region,
        this.city,
        this.postalCode,
        this.timezone,
        this.latitude,
        this.longitude,
        this.accuracy,
        this.continent,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());
    
    /// Deserialize a JSON map to a [TautulliGeolocationInfo] object.
    factory TautulliGeolocationInfo.fromJson(Map<String, dynamic> json) => _$TautulliGeolocationInfoFromJson(json);
    /// Serialize a [TautulliGeolocationInfo] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliGeolocationInfoToJson(this);
}
