part of radarr_commands;

/// Facilitates, encapsulates, and manages individual calls related to the queue within Radarr.
/// 
/// [RadarrCommandHandler_Queue] internally handles routing the HTTP client to the API calls.
class RadarrCommandHandler_Queue {
    final Dio _client;

    /// Create a command handler using an initialized [Dio] client.
    RadarrCommandHandler_Queue(this._client);

    /// Handler for [queue/status](https://radarr.video/docs/api/#/Queue/get-queue-status).
    /// 
    /// Stats on items in queue.
    Future<RadarrQueueStatus> getStatus() async => _commandGetQueueStatus(_client);
}
