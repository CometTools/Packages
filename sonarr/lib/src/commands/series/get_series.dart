part of sonarr_commands;

Future<SonarrSeries> _commandGetSeries(Dio client, {
    @required int seriesId,
}) async {
    assert(seriesId != null, 'seriesId cannot be null.');
    Response response = await client.get('series/$seriesId');
    return SonarrSeries.fromJson(response.data);
}
