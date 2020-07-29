part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to activity within Tautulli.
/// 
/// [TautulliCommandHandler_Activity] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Activity {
    final Dio _client;

    /// Create an activity command handler using an initialized [Dio] client.
    TautulliCommandHandler_Activity(this._client);

    /// Handler for [get_activity](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_activity).
    /// 
    /// Get the current activity on the Plex Media Server.
    /// 
    /// You can optionally define **one of** the following session identifiers.
    /// - `sessionKey`: Session key for the session info to return
    /// - `sessionId`: Session ID for the session info to return
    Future<TautulliActivity> getActivity({
        int sessionKey,
        String sessionId,
    }) async => _commandGetActivity(
        _client,
        sessionKey: sessionKey,
        sessionId: sessionId,
    );

    /// Handler for [terminate_session](https://github.com/Tautulli/Tautulli/blob/master/API.md#terminate_session).
    /// 
    /// Stop a streaming session.
    /// 
    /// - `sessionKey` (required): Integer key of the session.
    /// - `sessionId` (required): String identifier for the session.
    /// - `message`: Optional message to send to the user on why the session was terminated.
    Future<void> terminateSession({
        @required int sessionKey,
        @required String sessionId,
        String message,
    }) async => _commandTerminateSession(
        _client,
        sessionKey: sessionKey,
        sessionId: sessionId,
        message: message,
    );
}
