part of tautulli_commands;

Future<String> _commandStatus(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'status',
                'check': 'database',
            },
        );
        switch((response.data['response']['result'] as String)) {
            case 'success': return response.data['response']['message'];
            case 'error':
            default: throw Exception(throw Exception(response.data['response']['message']));
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
