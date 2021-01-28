part of radarr_commands;

/// Facilitates, encapsulates, and manages individual calls related to a movie's extra files within Radarr.
/// 
/// [RadarrCommandHandler_History] internally handles routing the HTTP client to the API calls.
class RadarrCommandHandler_History {
    final Dio _client;

    /// Create a series command handler using an initialized [Dio] client.
    RadarrCommandHandler_History(this._client);


    /// Handler for `history/movie/{id}`.
    /// 
    /// Returns a list of hitory entries for a single movie.
    /// 
    /// Required Parameters:
    /// - `movieId`: Movie identifier
    Future<List<RadarrHistoryRecord>> getForMovie({ @required int movieId }) async => _commandGetMovieHistory(_client, movieId: movieId);
}
