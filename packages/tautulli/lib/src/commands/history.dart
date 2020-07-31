part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to history within Tautulli.
/// 
/// [TautulliCommandHandler_History] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_History {
    final Dio _client;

    /// Create a history command handler using an initialized [Dio] client.
    TautulliCommandHandler_History(this._client);

    /// Handler for [delete_history](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_history).
    /// 
    /// Delete history rows from Tautulli.
    /// 
    /// - `rowIds` (required): List of row IDs to delete.
    Future<void> deleteHistory({
        @required List<int> rowIds,
    }) async => _commandDeleteHistory(_client, rowIds: rowIds);

    /// Handler for [get_history](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_history).
    /// 
    /// Get the Tautulli history.
    /// 
    /// - `grouping`: Group play history for the same item and user as a single entry when progress is less than the watched percent.
    /// - `user`: User's name
    /// - `userId`: User's ID
    /// - `ratingKey`: Identifier/rating key for the content itself.
    /// - `parentRatingKey`: Identifier/rating key for the content's parent.
    /// - `grandparentRatingKey`: Identifier/rating key for the content's grandparent.
    /// - `startDate`: String DateTime format structured as "YYYY-MM-DD".
    /// - `sectionId`: Section ID to fetch history for.
    /// - `mediaType`: Type of media to fetch history for.
    /// - `transcodeDecision`: To fetch history only for records with a specific transcoding decision.
    /// - `guid`: Plex GUID for an item.
    /// - `orderColumn`: The column order key for sorting the history records.
    /// - `orderDirection`: The direction inwhich to sort the history records.
    /// - `start`: Which row to start at (default: 0).
    /// - `length`: Number of records to return (default: 25).
    /// - `search`: A string to search for.
    Future<TautulliHistory> getHistory({
        bool grouping,
        String user,
        int userId,
        int ratingKey,
        int parentRatingKey,
        int grandparentRatingKey,
        String startDate,
        int sectionId,
        TautulliMediaType mediaType,
        TautulliTranscodeDecision transcodeDecision,
        String guid,
        TautulliHistoryOrderColumn orderColumn,
        TautulliOrderDirection orderDirection,
        int start,
        int length,
        String search,
    }) async => _commandGetHistory(
        _client,
        grouping: grouping,
        user: user,
        userId: userId,
        ratingKey: ratingKey,
        parentRatingKey: parentRatingKey,
        grandparentRatingKey: grandparentRatingKey,
        startDate: startDate,
        sectionId: sectionId,
        mediaType: mediaType,
        transcodeDecision: transcodeDecision,
        guid: guid,
        orderColumn: orderColumn,
        orderDirection: orderDirection,
        start: start,
        length: length,
        search: search,
    );
}
