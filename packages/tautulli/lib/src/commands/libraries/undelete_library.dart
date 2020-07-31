part of tautulli_commands;

Future<void> _commandUndeleteLibrary(Dio client, {
    @required int sectionId,
    @required String sectionName,
}) async {
    assert(sectionId != null, 'sectionId cannot be null.');
    assert(sectionName != null, 'sectionName cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'undelete_library',
            'section_id': sectionId,
            'section_name': sectionName,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(throw Exception(response.data['response']['message']));
    }
}
