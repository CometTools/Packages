part of sonarr_commands;

Future<List<SonarrRelease>> _commandGetSeasonReleases(Dio client, {
    @required int seriesId,
    @required int seasonNumber,
}) async {
    assert(seriesId != null, 'seriesId cannot be null');
    assert(seasonNumber != null, 'seasonNumber cannot be null');
    Response response = await client.get('v3/release', queryParameters: {
        'seriesId': seriesId,
        'seasonNumber': seasonNumber,
    });
    return (response.data as List).map((series) => SonarrRelease.fromJson(series)).toList();
}
