part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls for any miscellaneous calls within Tautulli.
/// 
/// [TautulliCommandHandler_Miscellaneous] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Miscellaneous {
    final Dio _client;

    /// Create a miscellaneous command handler using an initialized [Dio] client.
    TautulliCommandHandler_Miscellaneous(this._client);

    /// Handler for [arnold](https://github.com/Tautulli/Tautulli/blob/master/API.md#arnold).
    /// 
    /// Get to the chopper!
    Future<String> arnold() async => _commandArnold(_client);

    /// Handler for [get_date_formats](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_date_formats).
    /// 
    /// Get the date and time formats used by Tautulli.
    Future<TautulliDateFormat> getDateFormats() async => _commandGetDateFormats(_client);

    /// Handler for [get_geoip_lookup](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_geoip_lookup).
    /// 
    /// Get the geolocation info for an IP address.
    /// 
    /// - `ipAddress` (required): The IP address to lookup.
    Future<TautulliGeolocationInfo> getGeoIPLookup({
        @required String ipAddress,
    }) async => _commandGetGeoIPLookup(_client, ipAddress: ipAddress);

    /// Handler for [get_whois_lookup](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_whois_lookup).
    /// 
    /// Get the connection info for an IP address.
    /// 
    /// - `ipAddress` (required): The IP address to lookup.
    Future<TautulliWHOISInfo> getWHOISLookup({
        @required String ipAddress,
    }) async => _commandGetWHOISLookup(_client, ipAddress: ipAddress);
}
