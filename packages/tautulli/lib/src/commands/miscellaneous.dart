part of tautulli;

/// Facilitates, encapsulates, and manages individual calls for any miscellaneous calls within Tautulli.
/// 
/// [CommandHandler_Miscellaneous] internally handles routing the HTTP client to the API calls.
class CommandHandler_Miscellaneous {
    final Dio _client;

    /// Create an Activity command handler using an initialized [Dio] client.
    CommandHandler_Miscellaneous(this._client);

    /// Handler for [arnold](https://github.com/Tautulli/Tautulli/blob/master/API.md#arnold).
    /// 
    /// Get to the chopper!
    Future<String> arnold() async => _commandArnold(_client);
}
