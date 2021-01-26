part of radarr_commands;

/// Facilitates, encapsulates, and manages individual calls related to movie files within Radarr.
/// 
/// [RadarrCommandHandler_MovieFile] internally handles routing the HTTP client to the API calls.
class RadarrCommandHandler_MovieFile {
    final Dio _client;

    /// Create a series command handler using an initialized [Dio] client.
    RadarrCommandHandler_MovieFile(this._client);

    /// Handler for [movie](https://radarr.video/docs/api/#/Movie/getMovie).
    /// 
    /// Returns all movies stored in the database.
    Future<List<RadarrMovie>> getAll() async => _commandGetAllMovies(_client);

    /// Handler for `moviefile/{id}`.
    /// 
    /// Returns a list of movie files for a movie.
    /// 
    /// Required Parameters:
    /// - `movieId`: Movie identifier
    Future<List<RadarrMovieFile>> get({ @required int movieId }) async => _commandGetMovieFile(_client, movieId: movieId);
}
