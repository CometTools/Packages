/// Dart library package to facilitate the communication to and from [Radarr](https://radarr.video)'s API:
/// A movie collection manager for Usenet and BitTorrent users.
/// 
/// **Only v3 and newer releases of Radarr are supported with this library.**
/// 
/// This library gives access to [radarr_commands], and is needed as the only entrypoint.
library radarr;

// Imports
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

/// The core class to handle all connections to Radarr.
/// Gives you easy access to all implemented command handlers, initialized and ready to call.
/// 
/// [Radarr] handles the creation of the initial [Dio] HTTP client & command handlers.
/// You can optionally use the factory `.from()` to define your own [Dio] HTTP client.
class Radarr {
    /// Internal constructor
    Radarr._internal({
        @required this.httpClient,
    });

    /// Create a new Radarr API connection manager to connection to your instance.
    /// This default factory/constructor will create the [Dio] HTTP client for you given the parameters.
    /// 
    /// Required Parameters:
    /// - `host`: String that contains the protocol (http:// or https://), the host itself, and the base URL (if applicable)
    /// - `apiKey`: The API key fetched from Radarr's web interface
    /// 
    /// Optional Parameters:
    /// - `headers`: Map that contains additional headers that should be attached to all requests
    /// - `followRedirects`: If the HTTP client should follow URL redirects
    /// - `maxRedirects`: The maximum amount of redirects the client should follow (does nothing if `followRedirects` is false)
    factory Radarr({
        @required String host,
        @required String apiKey,
        Map<String, dynamic> headers,
        bool followRedirects = true,
        int maxRedirects = 5,
    }) {
        // Ensure none of the fields (but headers) are null.
        // If you do not want to set them, all optional parameters have default values.
        assert(host != null, 'host cannot be null.');
        assert(apiKey != null, 'apiKey cannot be null.');
        assert(followRedirects != null, 'followsRedirects cannot be null.');
        assert(maxRedirects != null, 'maxRedirects cannot be null.');
        // Build the HTTP client
        Dio _dio = Dio(
            BaseOptions(
                baseUrl: host.endsWith('/')
                    ? '${host}api/'
                    : '$host/api/',
                queryParameters: {
                    'apikey': apiKey,
                },
                headers: headers,
                followRedirects: followRedirects,
                maxRedirects: maxRedirects,
            ),
        );
        return Radarr._internal(
            httpClient: _dio,
        );
    }

    /// Create a new Radarr API connection manager to connection to your instance.
    /// 
    /// This factory allows you to define your own [Dio] HTTP client.
    /// Please ensure you set [BaseOptions] to include:
    /// - `baseUrl`: The URL to your Radarr instance
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
    factory Radarr.from({
        @required Dio client,
    }) {
        assert(client != null, 'client cannot be null.');
        return Radarr._internal(
            httpClient: client,
        );
    }

    /// The [Dio] HTTP client built during initialization.
    /// 
    /// Making changes to the [Dio] client should propogate to the command handlers, but is not recommended.
    /// The recommended way to make changes to the HTTP client is to use the `.from()` factory to build your own [Dio] HTTP client.
    final Dio httpClient;
}
