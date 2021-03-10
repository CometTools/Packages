/// Dart library package to facilitate the communication to and from [Sonarr](https://sonarr.tv)'s API:
/// A smart PVR for newsgroup and bittorrent users.
/// 
/// This library gives access to [sonarr_commands], and is needed as the only entrypoint.
library sonarr;

// Imports
import 'package:dio/dio.dart';
import 'commands.dart';

// Exports
export 'commands.dart';
export 'models.dart';
export 'types.dart';
export 'utilities.dart';

/// The core class to handle all connections to Sonarr.
/// Gives you easy access to all implemented command handlers, initialized and ready to call.
/// 
/// [Sonarr] handles the creation of the initial [Dio] HTTP client & command handlers.
/// You can optionally use the factory `.from()` to define your own [Dio] HTTP client.
class Sonarr {
    /// Internal constructor
    Sonarr._internal({
        required this.httpClient,
        required this.calendar,
        required this.command,
        required this.episode,
        required this.episodeFile,
        required this.history,
        required this.profile,
        required this.queue,
        required this.release,
        required this.rootFolder,
        required this.series,
        required this.seriesLookup,
        required this.system,
        required this.tag,
        required this.wanted,
    });

    /// Create a new Sonarr API connection manager to connection to your instance.
    /// This default factory/constructor will create the [Dio] HTTP client for you given the parameters.
    /// 
    /// Required Parameters:
    /// - `host`: String that contains the protocol (http:// or https://), the host itself, and the base URL (if applicable)
    /// - `apiKey`: The API key fetched from Sonarr's web interface
    /// 
    /// Optional Parameters:
    /// - `headers`: Map that contains additional headers that should be attached to all requests
    /// - `followRedirects`: If the HTTP client should follow URL redirects
    /// - `maxRedirects`: The maximum amount of redirects the client should follow (does nothing if `followRedirects` is false)
    factory Sonarr({
        required String host,
        required String apiKey,
        Map<String, dynamic>? headers,
        bool followRedirects = true,
        int maxRedirects = 5,
    }) {
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
        return Sonarr._internal(
            httpClient: _dio,
            calendar: SonarrCommandHandler_Calendar(_dio),
            command: SonarrCommandHandler_Command(_dio),
            episode: SonarrCommandHandler_Episode(_dio),
            episodeFile: SonarrCommandHandler_EpisodeFile(_dio),
            history: SonarrCommandHandler_History(_dio),
            profile: SonarrCommandHandler_Profile(_dio),
            queue: SonarrCommandHandler_Queue(_dio),
            release: SonarrCommandHandler_Release(_dio),
            rootFolder: SonarrCommandHandler_RootFolder(_dio),
            series: SonarrCommandHandler_Series(_dio),
            seriesLookup: SonarrCommandHandler_SeriesLookup(_dio),
            system: SonarrCommandHandler_System(_dio),
            tag: SonarrCommandHandler_Tag(_dio),
            wanted: SonarrCommandHandler_Wanted(_dio),
        );
    }

    /// Create a new Sonarr API connection manager to connection to your instance.
    /// 
    /// This factory allows you to define your own [Dio] HTTP client.
    /// Please ensure you set [BaseOptions] to include:
    /// - `baseUrl`: The URL to your Sonarr instance
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
    factory Sonarr.from({
        required Dio client,
    }) {
        return Sonarr._internal(
            httpClient: client,
            calendar: SonarrCommandHandler_Calendar(client),
            command: SonarrCommandHandler_Command(client),
            episode: SonarrCommandHandler_Episode(client),
            episodeFile: SonarrCommandHandler_EpisodeFile(client),
            history: SonarrCommandHandler_History(client),
            profile: SonarrCommandHandler_Profile(client),
            queue: SonarrCommandHandler_Queue(client),
            release: SonarrCommandHandler_Release(client),
            rootFolder: SonarrCommandHandler_RootFolder(client),
            series: SonarrCommandHandler_Series(client),
            seriesLookup: SonarrCommandHandler_SeriesLookup(client),
            system: SonarrCommandHandler_System(client),
            tag: SonarrCommandHandler_Tag(client),
            wanted: SonarrCommandHandler_Wanted(client),
        );
    }

    /// The [Dio] HTTP client built during initialization.
    /// 
    /// Making changes to the [Dio] client should propogate to the command handlers, but is not recommended.
    /// The recommended way to make changes to the HTTP client is to use the `.from()` factory to build your own [Dio] HTTP client.
    final Dio httpClient;

    /// Command handler for all calendar-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Calendar calendar;

    /// Command handler for all command-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Command command;

    /// Command handler for all episode-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Episode episode;

    /// Command handler for all episode file-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_EpisodeFile episodeFile;

    /// Command handler for all history-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_History history;

    /// Command handler for all profile-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Profile profile;

    /// Command handler for all queue-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Queue queue;

    /// Command handler for all release-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Release release;

    /// Command handler for all series lookup-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_RootFolder rootFolder;

    /// Command handler for all series-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Series series;

    /// Command handler for all series lookup-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_SeriesLookup seriesLookup;

    /// Command handler for all system-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_System system;

    /// Command handler for all tag-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Tag tag;

    /// Command handler for all wanted/missing-related API calls.
    /// 
    /// _Check the documentation to see all API calls that fall under this category._
    final SonarrCommandHandler_Wanted wanted;
}
