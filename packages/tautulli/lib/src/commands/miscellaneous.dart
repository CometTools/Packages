part of tautulli;

/// Facilitates and encapsulates and manages individual calls for any miscellaneous calls within Tautulli.
/// 
/// [_MiscellaneousCommandHandler] internally handles routing the HTTP client to the API calls.
class _MiscellaneousCommandHandler {
    final Dio _client;

    /// Create an Activity command handler using an initialized [Dio] client.
    _MiscellaneousCommandHandler(this._client);

    /// Handler for [arnold](https://github.com/Tautulli/Tautulli/blob/master/API.md#arnold).
    /// Returns a Future containing [String], a quote from Arnold Schwarzenegger himself.
    Future<String> arnold() async => _commandArnold(_client);
}
