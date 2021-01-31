part of radarr_commands;

Future<RadarrExclusion> _commandGetExclusions(Dio client, {
    @required int exclusionId,
}) async {
    assert(exclusionId != null, 'exclusionId cannot be null');
    Response response = await client.get('exclusions/$exclusionId');
    return RadarrExclusion.fromJson(response.data);
}
