part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to newsletters within Tautulli.
/// 
/// [TautulliCommandHandler_Newsletter] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Newsletter {
    final Dio _client;

    /// Create a newsletter command handler using an initialized [Dio] client.
    TautulliCommandHandler_Newsletter(this._client);
}
