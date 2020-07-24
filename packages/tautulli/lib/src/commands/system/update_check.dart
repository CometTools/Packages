part of tautulli_commands;

Future<bool> _commandUpdateCheck(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'update_check',
            },
        );
        switch((response.data['response']['result'] as String)) {
            case 'success': return (response.data['response']['data']['update'] as bool);
            case 'error':
            default: throw Exception(throw Exception(response.data['response']['message']));
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
