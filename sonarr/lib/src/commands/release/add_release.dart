part of sonarr_commands;

Future<SonarrAddedRelease> _commandAddRelease(Dio client, {
    required String guid,
    required int indexerId,
    bool useVersion3 = false,
}) async {
    Response response = await client.post(
        useVersion3
            ? 'v3/release'
            : 'release',
        data: {
            'guid': guid,
            'indexerId': indexerId,
        },
    );
    return SonarrAddedRelease.fromJson(response.data);
}
