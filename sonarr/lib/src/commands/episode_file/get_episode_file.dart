part of sonarr_commands;

Future<SonarrEpisodeFile> _commandGetEpisodeFile(Dio client, {
    @required int episodeId,
}) async {
    assert(episodeId != null, 'episodeId cannot be null');
    Response response = await client.get('episodefile/${episodeId}');
    return SonarrEpisodeFile.fromJson(response.data);
}
