part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to libraries within Tautulli.
/// 
/// [TautulliCommandHandler_Libraries] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Libraries {
    final Dio _client;

    /// Create a library command handler using an initialized [Dio] client.
    TautulliCommandHandler_Libraries(this._client);

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

    /// Handler for [delete_library](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_library).
    /// 
    /// Delete a library section from Tautulli. Also erases all history for the library.
    /// 
    /// - `sectionId` (required): The ID of the Plex library section.
    /// - `serverId`: The Plex server identifier of the library section.
    /// - `rowIds`: Optional list of row IDs to delete.
    Future<void> deleteLibrary({
        @required int sectionId,
        String serverId,
        List<int> rowIds,
    }) async => _commandDeleteLibrary(_client, sectionId: sectionId, serverId: serverId, rowIds: rowIds);

    /// Handler for [delete_recently_added](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_recently_added).
    /// 
    /// Flush out all of the recently added items in the database.
    Future<void> deleteRecentlyAdded() async => _commandDeleteRecentlyAdded(_client);

    /// Handler for [edit_library](https://github.com/Tautulli/Tautulli/blob/master/API.md#edit_library).
    /// 
    /// Update a library section on Tautulli.
    /// 
    /// - `sectionId` (required): The ID of the Plex library section.
    /// - `customThumb`: URL to a custom thumbnail art.
    /// - `customArt`: URL to a custom background art.
    /// - `keepHistory`: Should history be tracked for this library section?
    Future<void> editLibrary({
        @required int sectionId,
        String customThumb,
        String customArt,
        bool keepHistory,
    }) async => _commandEditLibrary(_client, sectionId: sectionId, customThumb: customThumb, customArt: customArt, keepHistory: keepHistory);

    /// Handler for [get_libraries](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_libraries).
    /// 
    /// Get a list of all libraries on your server.
    Future<List<TautulliLibrary>> getLibraries() async => _commandGetLibraries(_client);

    /// Handler for [get_library](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_library).
    /// 
    /// Get a library's details.
    /// 
    /// - `sectionId` (required): The library section ID in Plex.
    Future<TautulliSingleLibrary> getLibrary({
        @required int sectionId,
    }) async => _commandGetLibrary(_client, sectionId: sectionId);

    /// Handler for [get_library_names](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_library_names).
    /// 
    /// Get a list of library sections and IDs on the Plex Media Server.
    Future<List<TautulliLibraryName>> getLibraryNames() async => _commandGetLibraryNames(_client);

    /// Handler for [get_synced_items](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_synced_items).
    /// 
    /// Get a list of synced items on the Plex Media Server.
    /// 
    /// - `machineId` (required): The machine identifier to check for synced items.
    /// - `userId`: The user ID to fetch synced items for.
    Future<List<TautulliSyncedItem>> getSyncedItems({
        @required String machineId,
        int userId,
    }) async => _commandGetSyncedItems(_client, machineId: machineId, userId: userId);

    /// Handler for [refresh_libraries_list](https://github.com/Tautulli/Tautulli/blob/master/API.md#refresh_libraries_list).
    /// 
    /// Refresh the Tautulli libraries list.
    Future<void> refreshLibrariesList() async => _commandRefreshLibrariesList(_client);

    /// Handler for [update_metadata_details](https://github.com/Tautulli/Tautulli/blob/master/API.md#update_metadata_details).
    /// 
    /// Update the metadata in the Tautulli database by matching rating keys. Also updates all parents or children of the media item if it is a show/season/episode or artist/album/track.
    /// 
    /// - `oldRatingKey` (required): Identifier key for the old rating key.
    /// - `newRatingKey` (required): Identifier key for the new rating key.
    /// - `mediaType`: (required): [TautulliMediaType] value for the media type.
    Future<void> updateMetadataDetails({
        @required int oldRatingKey,
        @required int newRatingKey,
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
