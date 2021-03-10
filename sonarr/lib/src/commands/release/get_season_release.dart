part of sonarr_commands;

Future<List<SonarrRelease>> _commandGetSeasonReleases(Dio client, {
    required int seriesId,
    required int seasonNumber,
}) async {
    Response response = await client.get('v3/release', queryParameters: {
        'seriesId': seriesId,
        'seasonNumber': seasonNumber,
    });
    return (response.data as List).map((series) => SonarrRelease.fromJson(series)).toList();
}
