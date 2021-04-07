part of radarr_commands;

/// Facilitates, encapsulates, and manages individual calls related to the queue within Radarr.
/// 
/// [RadarrCommandHandler_Queue] internally handles routing the HTTP client to the API calls.
class RadarrCommandHandler_Queue {
    final Dio _client;

    /// Create a command handler using an initialized [Dio] client.
    RadarrCommandHandler_Queue(this._client);

    /// Handler for [queue](https://radarr.video/docs/api/#/Queue/get-queue).
    /// 
    /// Return a list of items in the queue.
    Future<RadarrQueue> get({
        int page = 1,
        int pageSize = 20,
        RadarrSortDirection sortDirection = RadarrSortDirection.DESCENDING,
        RadarrQueueSortKey sortKey = RadarrQueueSortKey.PROGRESS,
        bool includeUnknownMovieItems = false,
    }) async => _commandGetQueue(
        _client,
        page: page,
        pageSize: pageSize,
        sortDirection: sortDirection,
        sortKey: sortKey,
        includeUnknownMovieItems: includeUnknownMovieItems,
    );

    /// Handler for [queue/status](https://radarr.video/docs/api/#/Queue/get-queue-status).
    /// 
    /// Stats on items in queue.
    Future<RadarrQueueStatus> getStatus() async => _commandGetQueueStatus(_client);
}
