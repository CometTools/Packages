part of radarr_commands;

/// Facilitates, encapsulates, and manages individual calls related to disk space within Radarr.
/// 
/// [RadarrCommandHandler_DiskSpace] internally handles routing the HTTP client to the API calls.
class RadarrCommandHandler_DiskSpace {
    final Dio _client;

    /// Create a series command handler using an initialized [Dio] client.
    RadarrCommandHandler_DiskSpace(this._client);


    /// Handler for `diskspace`.
    /// 
    /// Returns a list of all disks and space information for the disks.
    Future<List<RadarrDiskSpace>> getAll() async => _commandGetAllDiskSpaces(_client);
}
