part of radarr_commands;

Future<RadarrFileSystem> _commandGetFileSystem(Dio client, {
    @required String path,
    bool allowFoldersWithoutTrailingSlashes,
    bool includeFiles,
}) async {
    assert(path != null, 'path cannot be null');
    Response response = await client.get('filesystem', queryParameters: {
        'path': path,
        if(allowFoldersWithoutTrailingSlashes != null) 'allowFoldersWithoutTrailingSlashes': allowFoldersWithoutTrailingSlashes,
        if(includeFiles != null) 'includeFiles': includeFiles,
    });
    return RadarrFileSystem.fromJson(response.data);
}
