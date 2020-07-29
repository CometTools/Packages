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

    /// Handler for [set_notifier_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_notifier_config).
    /// 
    /// Configure an existing notification agent.
    /// 
    /// - `agentId` **(required)**: The agent of the notifier.
    /// - `notifierId` **(required)**: The notifier config to update.
    /// - `notifierOptions` **(options)**: A map containing the configuration options for the notifier.
    Future<void> setNotifierConfig({
        @required int agentId,
        @required int notifierId,
        @required Map<String, dynamic> notifierOptions,
    }) async => _commandSetNotifierConfig(
        _client,
        agentId: agentId,
        notifierId: notifierId,
        notifierOptions: notifierOptions,
    );
}
