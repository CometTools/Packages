part of radarr_commands;

/// Facilitates, encapsulates, and manages individual calls related to commands within Radarr.
/// 
/// [RadarrCommandHandler_Command] internally handles routing the HTTP client to the API calls.
class RadarrCommandHandler_Command {
    final Dio _client;

    /// Create a command handler using an initialized [Dio] client.
    RadarrCommandHandler_Command(this._client);

    /// Handler for [command (Backup)](https://radarr.video/docs/api/#/Command/post-command).
    /// 
    /// Trigger a backup routine.
    Future<RadarrCommand> backup() async => _commandBackup(_client);

    /// Handler for [command (MissingMoviesSearch)](https://radarr.video/docs/api/#/Command/post-command).
    /// 
    /// Triggers a search of all missing movies.
    Future<RadarrCommand> missingMovieSearch() async => _commandMissingMovieSearch(_client);

    /// Handler for [command (MoviesSearch)](https://radarr.video/docs/api/#/Command/post-command).
    /// 
    /// Triggers a search for the given list of movies.
    /// 
    /// Required Parameters:
    /// - `movieIds`: List of movie IDs to search for.
    Future<RadarrCommand> moviesSearch({
        @required List<int> movieIds,
    }) async => _commandMoviesSearch(_client, movieIds: movieIds);

    /// Handler for [command (RefreshMovie)](https://radarr.video/docs/api/#/Command/post-command).
    /// 
    /// Trigger a refresh / scan of library.
    /// If no `movieIds` are supplied, all movies are refreshed.
    /// 
    /// Optional Parameters:
    /// - `movieIds`: List of movie IDs for the movies in specific to refresh
    Future<RadarrCommand> refreshMovie({
        List<int> movieIds,
    }) async => _commandRefreshMovie(_client, movieIds: movieIds);

    /// Handler for [command (RssSync)](https://radarr.video/docs/api/#/Command/post-command).
    /// 
    /// Trigger a RSS sync.
    Future<RadarrCommand> rssSync() async => _commandRSSSync(_client);
}
