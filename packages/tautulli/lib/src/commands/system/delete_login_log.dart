part of tautulli_commands;

Future<void> _commandDeleteLoginLog(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'delete_login_log',
            },
        );
        if((response.data['response']['result'] as String) != 'success') {
            throw Exception('Tautulli login log could not be deleted: ${response.data['response']['result']}');
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
