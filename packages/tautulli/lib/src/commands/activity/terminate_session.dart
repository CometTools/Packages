part of tautulli_commands;

Future<bool> _commandTerminateSession(Dio client, {
    @required int sessionKey,
    @required String sessionId,
    String message,
}) async {
    assert(sessionKey != null && sessionId != null);
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'terminate_session',
                'session_key': sessionKey,
                'session_id': sessionId,
                if(message != null) 'message': message,
            },
        );
        return response.data['response']['result'] == 'success'
            ? true
            : false;
    } catch (error, stack) {
        return Future.error(error, stack);
    }
}
