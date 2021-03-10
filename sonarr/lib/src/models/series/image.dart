import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

/// Model for a series' image from Sonarr.
@JsonSerializable(explicitToJson: true)
class SonarrSeriesImage {
    /// Type of image (banner, poster, etc.)
    @JsonKey(name: 'coverType')
    String? coverType;

    /// Direct URL to the image
    @JsonKey(name: 'url')
    String? url;
    
    /// Remote URL to the image
    @JsonKey(name: 'remoteUrl')
    String? remoteUrl;

    SonarrSeriesImage({
        this.coverType,
        this.url,
        this.remoteUrl,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [SonarrSeriesImage] object.
    factory SonarrSeriesImage.fromJson(Map<String, dynamic> json) => _$SonarrSeriesImageFromJson(json);
    /// Serialize a [SonarrSeriesImage] object to a JSON map.
    Map<String, dynamic> toJson() => _$SonarrSeriesImageToJson(this);
}
