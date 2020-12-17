part of sonarr_commands;

Future<void> _commandDeleteQueue(Dio client, {
    @required int id,
    bool blacklist,
}) async {
    assert(id != null, 'id cannot be null');
    await client.delete('queue/$id', queryParameters: {
        if(blacklist != null) 'blacklist': blacklist,
    });
}
