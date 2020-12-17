part of sonarr_commands;

Future<SonarrTag> _commandUpdateTag(Dio client, {
    @required SonarrTag tag,
}) async {
    assert(tag != null, 'tag cannot be null');
    Response response = await client.put('tag', data: tag.toJson());
    return SonarrTag.fromJson(response.data);
}
