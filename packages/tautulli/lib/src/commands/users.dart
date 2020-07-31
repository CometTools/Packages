part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to users within Tautulli.
/// 
/// [TautulliCommandHandler_Users] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Users {
    final Dio _client;

    /// Create a user command handler using an initialized [Dio] client.
    TautulliCommandHandler_Users(this._client);

    /// Handler for [delete_all_user_history](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_all_user_history).
    /// 
    /// Delete all Tautulli history for a specific user.
    /// 
    /// - `userId` (required): The ID of the Plex user.
    /// - `rowIds`: Optional list of row IDs to delete.
    Future<void> deleteAllUserHistory({
        @required int userId,
        List<int> rowIds,
    }) async => _commandDeleteAllUserHistory(_client, userId: userId, rowIds: rowIds);

    /// Handler for [get_users_table](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_users_table).
    /// 
    /// Get the data on Tautulli users table.
    /// 
    /// - `grouping`: Group users.
    /// - `orderColumn`: The column order key for sorting the user records.
    /// - `orderDirection`: The direction inwhich to sort the user records.
    /// - `start`: Which row to start at (default: 0).
    /// - `length`: Number of records to return (default: 25).
    /// - `search`: A string to search for.
    Future<TautulliUsersTable> getUsersTable({
        bool grouping,
        TautulliUsersOrderColumn orderColumn,
        TautulliOrderDirection orderDirection,
        int start,
        int length,
        String search,
    }) async => _commandGetUsersTable(
        _client,
        grouping: grouping,
        orderColumn: orderColumn,
        orderDirection: orderDirection,
        start: start,
        length: length,
        search: search,
    );

    /// Handler for [refresh_users_list](https://github.com/Tautulli/Tautulli/blob/master/API.md#refresh_users_list).
    /// 
    /// Refresh the Tautulli users list.
    Future<void> refreshUsersList() async => _commandRefreshUsersList(_client);

    /// Handler for [undelete_user](https://github.com/Tautulli/Tautulli/blob/master/API.md#undelete_user).
    /// 
    /// Restore a deleted user to Tautulli.
    /// 
    /// - `userId` (required): String identifier of the Plex user
    /// - `username` (required): String username of the Plex user
    Future<void> undeleteUser({
        @required String userId,
        @required String username,
    }) async => _commandUndeleteUser(_client, userId: userId, username: username);
}
