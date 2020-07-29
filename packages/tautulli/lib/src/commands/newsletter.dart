part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to newsletters within Tautulli.
/// 
/// [TautulliCommandHandler_Newsletter] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Newsletter {
    final Dio _client;

    /// Create a newsletter command handler using an initialized [Dio] client.
    TautulliCommandHandler_Newsletter(this._client);

    /// Handler for [add_newsletter_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#add_newsletter_config).
    /// 
    /// Add a new notification agent.
    /// 
    /// - `agentId` **(required)**: The ID of the agent.
    Future<void> addNewsletterConfig({
        @required int agentId,
    }) async => _commandAddNewsletterConfig(
        _client,
        agentId: agentId,
    );

    /// Handler for [set_newsletter_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_newsletter_config).
    /// 
    /// Configure an existing newsletter agent.
    /// 
    /// - `agentId` **(required)**: The newsletter type of the newsletter.
    /// - `newsletterId` **(required)**: The newsletter config to update.
    /// - `newsletterOptions` **(options)**: A map containing the configuration options for the newsletter.
    Future<void> setNewsletterConfig({
        @required int newsletterId,
        @required int agentId,
        @required Map<String, dynamic> newsletterOptions,
    }) async => _commandSetNewsletterConfig(
        _client,
        newsletterId: newsletterId,
        agentId: agentId,
        newsletterOptions: newsletterOptions,
    );
}
