part of sonarr_commands;

Future<SonarrTag> _commandGetTag(Dio client, {
    @required int id,
}) async {
    assert(id != null, 'id cannot be null');
    Response response = await client.get('tag/$id');
    return SonarrTag.fromJson(response.data);
}
