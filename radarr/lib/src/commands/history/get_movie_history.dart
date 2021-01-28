part of radarr_commands;

Future<List<RadarrHistoryRecord>> _commandGetMovieHistory(Dio client, {
    @required int movieId,
}) async {
    assert(movieId != null, 'movieId cannot be null.');
    Response response = await client.get('history/movie', queryParameters: {
        'movieId': movieId,
    });
    return (response.data as List).map((file) => RadarrHistoryRecord.fromJson(file)).toList();
}
