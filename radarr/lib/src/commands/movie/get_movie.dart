part of radarr_commands;

Future<RadarrMovie> _commandGetMovie(Dio client, {
    @required int movieId,
}) async {
    assert(movieId != null, 'movieId cannot be null.');
    Response response = await client.get('movie/$movieId');
    return RadarrMovie.fromJson(response.data);
}
