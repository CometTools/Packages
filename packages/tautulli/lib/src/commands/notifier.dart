part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to notifiers within Tautulli.
/// 
/// [TautulliCommandHandler_Notifier] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Notifier {
    final Dio _client;

    /// Create a notifier command handler using an initialized [Dio] client.
    TautulliCommandHandler_Notifier(this._client);

    /// Handler for [add_notifier_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#add_notifier_config).
    /// 
    /// Add a new notification agent.
    /// 
    /// - `agentId` **(required)**: The ID of the agent.
    Future<void> addNotifierConfig({
        @required int agentId,
    }) async => _commandAddNotifierConfig(
        _client,
        agentId: agentId,
    );
}
