part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to users within Tautulli.
/// 
/// [TautulliCommandHandler_User] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_User {
    final Dio _client;

    /// Create a user command handler using an initialized [Dio] client.
    TautulliCommandHandler_User(this._client);
}
