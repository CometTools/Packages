part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to libraries within Tautulli.
/// 
/// [TautulliCommandHandler_Library] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Library {
    final Dio _client;

    /// Create a library command handler using an initialized [Dio] client.
    TautulliCommandHandler_Library(this._client);
}
