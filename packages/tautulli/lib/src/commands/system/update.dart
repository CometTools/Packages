part of tautulli_commands;

Future<void> _commandUpdate(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'update',
            },
        );
        switch((response.data['response']['result'] as String)) {
            case 'success': return;
            case 'error':
            default: throw Exception(throw Exception(response.data['response']['message']));
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
