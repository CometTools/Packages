part of radarr_commands;

Future<void> _commandDeleteMovie(Dio client, {
    @required int movieId,
    bool addImportExclusion = false,
    bool deleteFiles = false,
}) async {
    assert(movieId != null, 'movieId cannot be null');
    await client.delete('movie/$movieId', queryParameters: {
        if(addImportExclusion != null) 'addImportExclusion': addImportExclusion,
        if(deleteFiles != null) 'deleteFiles': deleteFiles,
    });
    return;
}
