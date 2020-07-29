part of tautulli_commands;

Future<void> _commandUndeleteUser(Dio client, {
    @required String userId,
    @required String username,
}) async {
    assert(userId != null, 'userId cannot be null');
    assert(username != null, 'username cannot be null');
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'undelete_user',
                'user_id': userId,
                'username': username,
            },
        );
        switch(response.data['response']['result']) {
            case 'success': return;
            case 'error':
            default: throw Exception(response.data['response']['message']);
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
