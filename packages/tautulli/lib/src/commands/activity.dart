part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to activity within Tautulli.
/// 
/// [TautulliCommandHandler_Activity] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Activity {
    final Dio _client;

    /// Create an Activity command handler using an initialized [Dio] client.
    TautulliCommandHandler_Activity(this._client);

    /// Handler for [get_activity](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_activity).
    /// 
    /// Get the current activity on the Plex Media Server.
    /// 
    /// You can optionally define **one of** the following session identifiers.
    /// Defining both will result in an [AssertionError].
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
}
