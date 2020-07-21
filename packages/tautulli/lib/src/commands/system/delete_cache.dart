part of tautulli_commands;

Future<void> _commandDeleteCache(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'delete_cache',
            },
        );
        if((response.data['response']['result'] as String) != 'success') {
            throw Exception('Tautulli database could not be backed up: ${response.data['response']['result']}');
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
