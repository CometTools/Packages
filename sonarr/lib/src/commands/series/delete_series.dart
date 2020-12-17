part of sonarr_commands;

Future<SonarrSeries> _commandDeleteSeries(Dio client, {
    @required int seriesId,
    bool deleteFiles = false,
}) async {
    assert(seriesId != null, 'seriesId cannot be null');
    Response response = await client.delete('series/$seriesId', queryParameters: {
        if(deleteFiles != null) 'deleteFiles': deleteFiles,
    });
    return SonarrSeries.fromJson(response.data);
}
