part of tautulli_commands;

Future<void> _commandBackupDB(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'backup_db',
            },
        );
        if((response.data['response']['result'] as String) != 'success') {
            throw Exception('Tautulli database could not be backed up: ${response.data['response']['result']}');
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
