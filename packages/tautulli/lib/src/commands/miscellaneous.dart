part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls for any miscellaneous calls within Tautulli.
/// 
/// [TautulliCommandHandler_Miscellaneous] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Miscellaneous {
    final Dio _client;

    /// Create a miscellaneous command handler using an initialized [Dio] client.
    TautulliCommandHandler_Miscellaneous(this._client);

    /// Handler for [arnold](https://github.com/Tautulli/Tautulli/blob/master/API.md#arnold).
    /// 
    /// Get to the chopper!
    Future<String> arnold() async => _commandArnold(_client);
}
