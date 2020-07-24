part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to libraries within Tautulli.
/// 
/// [TautulliCommandHandler_Library] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Library {
    final Dio _client;

    /// Create a library command handler using an initialized [Dio] client.
    TautulliCommandHandler_Library(this._client);

    /// Handler for [update_metadata_details](https://github.com/Tautulli/Tautulli/blob/master/API.md#update_metadata_details).
    /// 
    /// Update the metadata in the Tautulli database by matching rating keys. Also updates all parents or children of the media item if it is a show/season/episode or artist/album/track.
    /// 
    /// - `oldRatingKey` **(required)**: String identifier key for the old rating key.
    /// - `newRatingKey` **(required)**: String identifier key for the new rating key.
    /// - `mediaType`: **(rquired)**: [TautulliMediaType] value for the media type.
    Future<void> updateMetadataDetails({
        @required String oldRatingKey,
        @required String newRatingKey,
        @required TautulliMediaType mediaType,
    }) async => _commandUpdateMetadataDetails(
        _client,
        oldRatingKey: oldRatingKey,
        newRatingKey: newRatingKey,
        mediaType: mediaType,
    );
}
