import 'dart:io';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

class Tautulli {
    final Dio _dio;

    /// Internal constructor
    Tautulli._internal(this._dio);

    /// Create a new Tautulli API object to start the connection to your instance.
    /// 
    /// - `host` **(required)**: String that contains the protocol (http:// or https://), the host itself, and the base URL (if applicable).
    /// - `apiKey` **(required)**: The API key fetched from Tautulli's web interface.
    /// - `headers`: Map that contains additional headers that should be attached to all requests.
    /// - `strictTLS`: If the HTTP client should validate that the SSL/TLS certificate is valid against the device's CA.
    /// - `followRedirects`: If the HTTP client should follow URL redirects.
    /// - `maxRedirects`: The maximum amount of redirects the client should follow (does nothing if `followRedirects` is false).
    factory Tautulli({
        @required String host,
        @required String apiKey,
        Map<String, dynamic> headers,
        bool strictTLS = true,
        bool followRedirects = true,
        int maxRedirects = 5,
    }) {
        // Ensure none of the fields (but headers) is not null.
        assert(
            host != null &&
            apiKey != null &&
            strictTLS != null &&
            followRedirects != null &&
            maxRedirects != null
        );
        // Build the HTTP client
        Dio _client = Dio(
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
            (_client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
                client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
            };
        }
        return Tautulli._internal(_client);
    }

    /// The [Dio] HTTP client built during initialization.
    Dio get httpClient => _dio;
}
