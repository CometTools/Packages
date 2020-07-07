part of tautulli;

/// Facilitates, encapsulates, and manages individual calls for any miscellaneous calls within Tautulli.
/// 
/// [CommandHandler_System] internally handles routing the HTTP client to the API calls.
class CommandHandler_System {
    final Dio _client;

    /// Create an Activity command handler using an initialized [Dio] client.
    CommandHandler_System(this._client);

    /// Handler for [update](https://github.com/Tautulli/Tautulli/blob/master/API.md#update).
    /// 
    /// Update Tautulli.
    Future<void> update() async => _commandUpdate(_client);
}
