part of tautulli_commands;

Future<TautulliActivity> _commandGetActivity(Dio client, {
    int sessionKey,
    String sessionId,
}) async {
    if(sessionKey != null) assert(sessionId == null, 'sessionKey and sessionId both cannot be defined.');
    return TautulliActivity();
}
