part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to libraries within Tautulli.
/// 
/// [TautulliCommandHandler_Library] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Library {
    final Dio _client;

    /// Create a library command handler using an initialized [Dio] client.
    TautulliCommandHandler_Library(this._client);

    /// Handler for [delete_all_library_history](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_all_library_history).
    /// 
    /// Delete all Tautulli history for a specific library.
    /// 
    /// - `sectionId` (required): The ID of the Plex library section.
    /// - `serverId`: The Plex server identifier of the library section.
    /// - `rowIds`: Optional list of row IDs to delete.
    Future<void> deleteAllLibraryHistory({
        @required int sectionId,
        String serverId,
        List<int> rowIds,
    }) async => _commandDeleteAllLibraryHistory(_client, sectionId: sectionId, serverId: serverId, rowIds: rowIds);

    /// Handler for [update_metadata_details](https://github.com/Tautulli/Tautulli/blob/master/API.md#update_metadata_details).
    /// 
    /// Update the metadata in the Tautulli database by matching rating keys. Also updates all parents or children of the media item if it is a show/season/episode or artist/album/track.
    /// 
    /// - `oldRatingKey` (required): Identifier key for the old rating key.
    /// - `newRatingKey` (required): Identifier key for the new rating key.
    /// - `mediaType`: **(rquired)**: [TautulliMediaType] value for the media type.
    Future<void> updateMetadataDetails({
        @required String oldRatingKey,
        @required String newRatingKey,
        @required TautulliMediaType mediaType,
    }) async => _commandUpdateMetadataDetails(_client, oldRatingKey: oldRatingKey, newRatingKey: newRatingKey, mediaType: mediaType);

    /// Handler for [undelete_library](https://github.com/Tautulli/Tautulli/blob/master/API.md#undelete_library).
    /// 
    /// Restore a deleted library section to Tautulli.
    /// 
    /// - `sectionId` (required): The ID of the Plex library section.
    /// - `sectionName` (required): The name of the Plex library section.
    Future<void> undeleteLibrary({
        @required int sectionId,
        @required String sectionName,
    }) async => _commandUndeleteLibrary(_client, sectionId: sectionId, sectionName: sectionName);
}
