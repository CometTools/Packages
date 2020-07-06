part of tautulli;

/// The core class to handle all connections to Tautulli. Grants access to all encapsulated command handlers.
/// 
/// [TautulliConnection] handles the creation of the initial [Dio] HTTP client.
/// You can optionally use the factory `.from()` to define your own [Dio] HTTP client.
class TautulliConnection {
    /// Internal constructor
    TautulliConnection._internal({
        @required this.httpClient,
        @required this.activity,
        @required this.miscellaneous,
    });

    /// Create a new Tautulli API connection manager to connection to your instance.
    /// This default factory/constructor will create the [Dio] HTTP client for you given the parameters.
    /// 
    /// - `host` **(required)**: String that contains the protocol (http:// or https://), the host itself, and the base URL (if applicable).
    /// - `apiKey` **(required)**: The API key fetched from Tautulli's web interface.
    /// - `headers`: Map that contains additional headers that should be attached to all requests.
    /// - `strictTLS`: If the HTTP client should validate that the SSL/TLS certificate is valid against the device's CA.
    /// - `followRedirects`: If the HTTP client should follow URL redirects.
    /// - `maxRedirects`: The maximum amount of redirects the client should follow (does nothing if `followRedirects` is false).
    factory TautulliConnection({
        @required String host,
        @required String apiKey,
        Map<String, dynamic> headers,
        bool strictTLS = true,
        bool followRedirects = true,
        int maxRedirects = 5,
    }) {
        // Ensure none of the fields (but headers) is not null.
        // If you do not want to set them, all optional parameters have default values.
        assert(host != null, 'host cannot be null.');
        assert(apiKey != null, 'apiKey cannot be null.');
        assert(strictTLS != null, 'strictTLS cannot be null.');
        assert(followRedirects != null, 'followsRedirects cannot be null.');
        assert(maxRedirects != null, 'maxRedirects cannot be null.');
        // Build the HTTP client
        Dio _dio = Dio(
            BaseOptions(
                baseUrl: host.length != 0 && host.endsWith('/')
                    ? '${host.substring(0, host.length-1)}/api/v2'
                    : '$host/api/v2',
                queryParameters: {
                    'apikey': apiKey,
                },
                headers: headers,
                followRedirects: followRedirects,
                maxRedirects: maxRedirects,
            ),
        );
        // If the user wants to disable strict TLS...
        if(!strictTLS) {
            (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
                client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
            };
        }
        return TautulliConnection._internal(
            httpClient: _dio,
            activity: _ActivityCommandHandler(_dio),
            miscellaneous: _MiscellaneousCommandHandler(_dio),
        );
    }

    /// Create a new Tautulli API connection manager to connection to your instance.
    /// 
    /// This factory allows you to define your own [Dio] HTTP client.
    /// Please ensure you set [BaseOptions] to include:
    /// - `baseUrl`: The URL to your Tautulli instance
    /// - `queryParameters`: The key `apikey` with the value of your API key.
    /// 
    /// Without these you will not be able to achieve a successful connection. See example below for bare minimum [Dio] configuration:
    /// ```dart
    /// Dio(
    ///     BaseOptions(
    ///         baseUrl: '<your instance URL>',
    ///         queryParameters: {
    ///             'apikey': '<your API key>',
    ///         },
    ///     ),
    /// );
    /// ```
    factory TautulliConnection.from({
        @required Dio client,
    }) {
        assert(client != null, 'client cannot be null.');
        return TautulliConnection._internal(
            httpClient: client,
            activity: _ActivityCommandHandler(client),
            miscellaneous: _MiscellaneousCommandHandler(client),
        );
    }

    /// The [Dio] HTTP client built during initialization.
    /// 
    /// Making changes to the [Dio] client will not propogate to the command handlers.
    /// You must reinitialize [TautulliConnection] to set a new HTTP client.
    final Dio httpClient;
    /// Command handler for all activity-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final _ActivityCommandHandler activity;
    /// Command handler for all misc-related API calls.
    /// 
    /// _Check the documentation to see all API calls taht fall under this category._
    final _MiscellaneousCommandHandler miscellaneous;
}
