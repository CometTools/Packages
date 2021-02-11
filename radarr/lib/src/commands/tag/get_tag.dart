part of radarr_commands;

Future<RadarrTag> _commandGetTag(Dio client, {
    @required int id,
}) async {
    assert(id != null, 'id cannot be null');
    Response response = await client.get('tag/$id');
    return RadarrTag.fromJson(response.data);
}
