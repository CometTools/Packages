part of radarr_commands;

Future<void> _commandDeleteTag(Dio client, {
    @required int id,
}) async {
    assert(id != null, 'id cannot be null');
    await client.delete('tag/$id');
    return;
}
