part of radarr_commands;

Future<RadarrMovie> _commandUpdateMovie(Dio client, {
    @required RadarrMovie movie,
}) async {
    assert(movie != null, 'movie cannot be null.');
    Response response = await client.put('movie', data: movie.toJson());
    return RadarrMovie.fromJson(response.data);
}
