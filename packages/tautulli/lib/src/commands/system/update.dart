part of tautulli_commands;

Future<void> _commandUpdate(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'update',
            },
        );
        if((response.data['response']['result'] as String) != 'success')
            throw Exception('Tautulli could not be update: ${response.data['response']['result']}');
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
