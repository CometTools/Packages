part of tautulli_commands;

Future<void> _commandTerminateSession(Dio client, {
    @required int sessionKey,
    @required String sessionId,
    String message,
}) async {
    assert(sessionKey != null && sessionId != null);
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'terminate_session',
            'session_key': sessionKey,
            'session_id': sessionId,
            if(message != null) 'message': message,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(response.data['response']['message']);
    }
}
