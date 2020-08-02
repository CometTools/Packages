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

    /// Handler for [get_server_friendly_name](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_friendly_name).
    /// 
    /// Get the name of the Plex Media Server.
    Future<String> getServerFriendlyName() async => _commandGetServerFriendlyName(_client);

    /// Handler for [get_server_id](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_id).
    /// 
    /// Get the Plex Media Server identifier.
    Future<String> getServerID({
        @required String hostname,
        @required int port,
        bool ssl,
        bool remote,
    }) async => _commandGetServerID(_client, hostname: hostname, port: port, ssl: ssl, remote: remote);

    /// Handler for [get_server_identity](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_identity).
    /// 
    /// Get info about the local server.
    Future<TautulliServerIdentity> getServerIdentity() async => _commandGetServerIdentity(_client);

    /// Handler for [get_whois_lookup](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_whois_lookup).
    /// 
    /// Get the connection info for an IP address.
    /// 
    /// - `ipAddress` (required): The IP address to lookup.
    Future<TautulliWHOISInfo> getWHOISLookup({
        @required String ipAddress,
    }) async => _commandGetWHOISLookup(_client, ipAddress: ipAddress);

    /// Handler for [pms_image_proxy](https://github.com/Tautulli/Tautulli/blob/master/API.md#pms_image_proxy).
    /// 
    /// Gets an image from the PMS and saves it to the image cache directory. Returns a Uint8List of the image buffer.
    /// 
    /// One of `image` or `ratingKey` are required, but both cannot be defined.
    /// 
    /// - `image` (required*): Path to the image to download from Plex, OR
    /// - `ratingKey` (required*): Rating key of the content.
    /// - `width`: Width to scale the image to.
    /// - `height`: Height to scale the image to.
    /// - `opacity`: Set the opacity of the image to (0 to 100).
    /// - `background`: Set the background color (HEX colors, e.g. 282828).
    /// - `blur`: How much to the blur the image.
    /// - `imageFormat`: The format to download the image as (jpg, png, etc.).
    /// - `fallbackImage`: A fallback image to return if there is no image.
    /// - `refresh`: Whether to refresh the image cache first.
    Future<Uint8List> pmsImageProxy({
        String image,
        int ratingKey,
        int width,
        int height,
        int opacity,
        String background,
        int blur,
        String imageFormat,
        TautulliFallbackImage fallbackImage,
        bool refresh,
    }) async => _commandPMSImageProxy(
        _client,
        image: image,
        ratingKey: ratingKey,
        width: width,
        height: height,
        opacity: opacity,
        background: background,
        blur: blur,
        imageFormat: imageFormat,
        fallbackImage: fallbackImage,
        refresh: refresh,
    );
}
