part of radarr_commands;

Future<RadarrImportList> _commandGetImportList(Dio client, {
    @required int listId,
}) async {
    assert(listId != null, 'listId cannot be null');
    Response response = await client.get('importlist/$listId');
    return RadarrImportList.fromJson(response.data);
}
