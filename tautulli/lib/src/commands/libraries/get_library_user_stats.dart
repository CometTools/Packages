part of tautulli_commands;

Future<List<TautulliLibraryUserStats>> _commandGetLibraryUserStats(Dio client, {
    @required int sectionId,
    bool grouping,
}) async {
    assert(sectionId != null, 'sectionId cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'get_library_user_stats',
            'section_id': sectionId,
            if(grouping != null) 'grouping': grouping ? 1 : 0,
        },
    );
    switch(response.data['response']['result']) {
        case 'success': return (response.data['response']['data'] as List).map((library) => TautulliLibraryUserStats.fromJson(library)).toList();
        case 'error':
        default: throw Exception(response.data['response']['message']);
    }
}
