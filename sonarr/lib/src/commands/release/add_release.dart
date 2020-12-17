part of sonarr_commands;

Future<SonarrAddedRelease> _commandAddRelease(Dio client, {
    @required String guid,
    @required int indexerId,
    bool useVersion3 = false,
}) async {
    assert(guid != null, 'guid cannot be null');
    assert(indexerId != null, 'indexerId cannot be null');
    assert(useVersion3 != null, 'useVersion3 cannot be null');
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
