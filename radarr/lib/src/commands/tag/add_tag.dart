part of radarr_commands;

Future<RadarrTag> _commandAddTag(Dio client, {
    @required String label,
}) async {
    assert(label != null, 'label cannot be null');
    Response response = await client.post('tag', data: {
        'label': label,
    });
    return RadarrTag.fromJson(response.data);
}
