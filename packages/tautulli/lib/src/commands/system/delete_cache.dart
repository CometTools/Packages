part of tautulli_commands;

Future<void> _commandDeleteCache(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'delete_cache',
            },
        );
        if((response.data['response']['result'] as String) != 'success') {
            throw Exception('Tautulli cache could not be deleted: ${response.data['response']['result']}');
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
