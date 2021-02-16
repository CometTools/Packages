part of radarr_commands;

Future<void> _commandPushRelease(Dio client, {
    @required String guid,
    @required int indexerId,
}) async {
    assert(guid != null, 'guid cannot be null');
    assert(indexerId != null, 'indexerId cannot be null');
    await client.post('release', data: {
        'guid': guid,
        'indexerId': indexerId,
    });
}
