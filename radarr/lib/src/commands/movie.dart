part of radarr_commands;

/// Facilitates, encapsulates, and manages individual calls related to movies within Radarr.
/// 
/// [RadarrCommandHandler_Movie] internally handles routing the HTTP client to the API calls.
class RadarrCommandHandler_Movie {
    final Dio _client;

    /// Create a series command handler using an initialized [Dio] client.
    RadarrCommandHandler_Movie(this._client);

    /// Handler for [movie](https://radarr.video/docs/api/#/Movie/getMovie).
    /// 
    /// Returns all movies stored in the database.
    Future<List<RadarrMovie>> getAll() async => _commandGetAllMovies(_client);

    /// Handler for [movie/{id}](https://radarr.video/docs/api/#/Movie/getMovieById).
    /// 
    /// Returns a single movie.
    /// 
    /// Required Parameters:
    /// - `movieId`: Movie identifier
    Future<RadarrMovie> get({ @required int movieId }) async => _commandGetMovie(_client, movieId: movieId);

    /// Handler for [movie](https://radarr.video/docs/api/#/Movie/put_movie).
    /// 
    /// Updates a movie.
    /// 
    /// Required Parameters:
    /// - `movie`: [RadarrMovie] object with the updated information
    Future<RadarrMovie> update({ @required RadarrMovie movie }) async => _commandUpdateMovie(_client, movie: movie);
}
