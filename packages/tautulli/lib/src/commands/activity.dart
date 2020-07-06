part of tautulli;

/// Facilitates, encapsulates, and manages individual calls related to activity within Tautulli.
/// 
/// [CommandHandler_Activity] internally handles routing the HTTP client to the API calls.
class CommandHandler_Activity {
    final Dio _client;

    /// Create an Activity command handler using an initialized [Dio] client.
    CommandHandler_Activity(this._client);

    /// Handler for [get_activity](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_activity).
    /// Returns a Future containing [TautulliActivity].
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
