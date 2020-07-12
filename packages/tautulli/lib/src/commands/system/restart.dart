part of tautulli_commands;

Future<void> _commandRestart(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'restart',
            },
        );
        if((response.data['response']['result'] as String) != 'success') {
            throw Exception('Tautulli could not be restarted: ${response.data['response']['result']}');
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
