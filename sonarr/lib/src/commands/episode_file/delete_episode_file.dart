part of sonarr_commands;

Future<void> _commandDeleteEpisodeFile(Dio client, {
    @required int episodeFileId,
}) async {
    assert(episodeFileId != null, 'episodeFileId cannot be null');
    await client.delete('episodefile/${episodeFileId}');
}
