part of tautulli_commands;

Future<void> _commandDeleteHistory(Dio client, {
    @required List<int> rowIds,
}) async {
    assert(rowIds != null, 'rowIds cannot be null');
    assert(rowIds.isNotEmpty, 'rowIds cannot be empty');
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'delete_history',
                'row_ids': rowIds.join(","),
            },
        );
        switch((response.data['response']['result'] as String)) {
            case 'success': return;
            case 'error':
            default: throw Exception(throw Exception(response.data['response']['message']));
        }
    } catch (error, stack) {
        return Future.error(error, stack);
    }
}
