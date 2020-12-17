part of sonarr_commands;

Future<SonarrTag> _commandAddTag(Dio client, {
    @required String label,
}) async {
    assert(label != null, 'label cannot be null');
    Response response = await client.post('tag', data: {
        'label': label,
    });
    return SonarrTag.fromJson(response.data);
}
