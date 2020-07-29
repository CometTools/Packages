part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to users within Tautulli.
/// 
/// [TautulliCommandHandler_User] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_User {
    final Dio _client;

    /// Create a user command handler using an initialized [Dio] client.
    TautulliCommandHandler_User(this._client);

    /// Handler for [undelete_user](https://github.com/Tautulli/Tautulli/blob/master/API.md#undelete_user).
    /// 
    /// Restore a deleted user to Tautulli.
    /// 
    /// - `userId` (required): String identifier of the Plex user
    /// - `username` (required): String username of the Plex user
    Future<void> undeleteUser({
        @required String userId,
        @required String username,
    }) async => _commandUndeleteUser(
        _client,
        userId: userId,
        username: username,
    );
}
