part of radarr_commands;

Future<List<RadarrExtraFile>> _commandGetExtraFiles(Dio client, {
    @required int movieId,
}) async {
    assert(movieId != null, 'movieId cannot be null.');
    Response response = await client.get('extraFile', queryParameters: {
        'movieId': movieId,
    });
    return (response.data as List).map((credit) => RadarrExtraFile.fromJson(credit)).toList();
}
