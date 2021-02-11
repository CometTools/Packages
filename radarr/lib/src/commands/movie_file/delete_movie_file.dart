part of radarr_commands;

Future<void> _commandDeleteMovieFile(Dio client, {
    @required int movieFileId,
}) async {
    assert(movieFileId != null, 'movieFileId cannot be null.');
    await client.delete('moviefile/$movieFileId');
    return;
}
