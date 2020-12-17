part of sonarr_commands;

Future<SonarrCommand> _commandSeasonSearch(Dio client, {
    @required int seriesId,
    @required int seasonNumber,
}) async {
    assert(seriesId != null, 'seriesId cannot be null');
    assert(seasonNumber != null, 'seasonNumber cannot be null');
    Response response = await client.post('command', data: {
        'name': 'SeasonSearch',
        'seriesId': seriesId,
        'seasonNumber': seasonNumber,
    });
    return SonarrCommand.fromJson(response.data);
}
