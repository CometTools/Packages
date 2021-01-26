part of radarr_commands;

Future<List<RadarrMovieFile>> _commandGetMovieFile(Dio client, {
    @required int movieId,
}) async {
    assert(movieId != null, 'movieId cannot be null.');
    Response response = await client.get('moviefile', queryParameters: {
        'movieId': movieId,
    });
    return (response.data as List).map((file) => RadarrMovieFile.fromJson(file)).toList();
}
