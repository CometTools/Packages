import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/utilities.dart';

part 'server.g.dart';

/// Model to store the Plex Media Server details.
@JsonSerializable(explicitToJson: true)
class TautulliServer {
    /// Is SSL required for this server?
    @JsonKey(name: 'httpsRequired', toJson: TautulliUtilities.booleanToString, fromJson: TautulliUtilities.stringToBoolean)
    final bool httpsRequired;

    /// Is this a local server instance?
    @JsonKey(name: 'local', toJson: TautulliUtilities.booleanToString, fromJson: TautulliUtilities.stringToBoolean)
    final bool local;

    /// The client identifier key.
    @JsonKey(name: 'clientIdentifier')
    final String clientIdentifier;

    /// The Plex Media Server label.
    @JsonKey(name: 'label')
    final String label;

    /// The IP address of the Plex Media Server.
    @JsonKey(name: 'ip')
    final String ipAddress;

    /// The public port that the Plex Media Server is available on.
    @JsonKey(name: 'port', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int port;

    /// The direct URI to the Plex Media Server.
    @JsonKey(name: 'uri')
    final String uri;

    /// The IP address + port, the value entered in Tautulli.
    @JsonKey(name: 'value')
    final String value;

    /// Is this a cloud instance of Plex Media Server?
    @JsonKey(name: 'is_cloud')
    final bool isCloud;

    TautulliServer({
        this.httpsRequired,
        this.local,
        this.clientIdentifier,
        this.label,
        this.ipAddress,
        this.port,
        this.uri,
        this.value,
        this.isCloud,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());
    
    /// Deserialize a JSON map to a [TautulliServer] object.
    factory TautulliServer.fromJson(Map<String, dynamic> json) => _$TautulliServerFromJson(json);
    /// Serialize a [TautulliServer] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliServerToJson(this);
}