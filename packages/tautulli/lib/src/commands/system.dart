part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls for any system calls within Tautulli.
/// 
/// [TautulliCommandHandler_System] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_System {
    final Dio _client;

    /// Create a system command handler using an initialized [Dio] client.
    TautulliCommandHandler_System(this._client);

    /// Handler for [backup_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#backup_config).
    /// 
    /// Create a manual backup of the `config.ini` file.
    Future<void> backupConfig() async => _commandBackupConfig(_client);

    /// Handler for [backup_db](https://github.com/Tautulli/Tautulli/blob/master/API.md#backup_db).
    /// 
    /// Create a manual backup of the `plexpy.db` file.
    Future<void> backupDB() async => _commandBackupDB(_client);

    /// Handler for [delete_cache](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_cache).
    /// 
    /// Delete and recreate the cache directory.
    Future<void> deleteCache() async => _commandDeleteCache(_client);

    /// Handler for [delete_hosted_images](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_hosted_images).
    /// 
    /// Delete the images uploaded to image hosting services.
    /// 
    /// - `ratingKey`: Identifier/rating key.
    /// - `service`: A [TautulliImageHostService] object of the hosting service to delete from.
    /// - `deleteAll`: True to delete all images from the service.
    Future<void> deleteHostedImages({
        int ratingKey,
        TautulliImageHostService service,
        bool deleteAll,
    }) async => _commandDeleteHostedImages(_client, ratingKey: ratingKey, service: service, deleteAll: deleteAll);

    /// Handler for [delete_lookup_info](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_lookup_info).
    /// 
    /// Delete the 3rd party API lookup info.
    /// 
    /// - `ratingKey`: Identifier/rating key.
    /// - `service`: A [TautulliAPILookupService] object of the API lookup service to delete from.
    /// - `deleteAll`: True to delete all info from the service.
    Future<void> deleteLookupInfo({
        int ratingKey,
        TautulliAPILookupService service,
        bool deleteAll,
    }) async => _commandDeleteLookupInfo(_client, ratingKey: ratingKey, service: service, deleteAll: deleteAll);

    /// Handler for [delete_media_info_cache](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_media_info_cache).
    /// 
    /// Delete the media info table cache for a specific library.
    /// 
    /// - `sectionId` (required): The ID of the Plex library section.
    Future<void> deleteMediaInfoCache({
        @required int sectionId,
    }) async => _commandDeleteMediaInfoCache(_client, sectionId: sectionId);

    /// Handler for [delete_image_cache](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_image_cache).
    /// 
    /// Delete and recreate the image cache directory.
    Future<void> deleteImageCache() async => _commandDeleteImageCache(_client);

    /// Handler for [delete_login_log](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_login_log).
    /// 
    /// Delete the Tautulli login logs.
    Future<void> deleteLoginLog() async => _commandDeleteLoginLog(_client);

    /// Handler for [restart](https://github.com/Tautulli/Tautulli/blob/master/API.md#restart).
    /// 
    /// Restart Tautulli.
    Future<void> restart() async => _commandRestart(_client);

    /// Handler for [status](https://github.com/Tautulli/Tautulli/blob/master/API.md#status).
    /// 
    /// Get the current status of Tautulli.
    Future<String> status() async => _commandStatus(_client);

    /// Handler for [update](https://github.com/Tautulli/Tautulli/blob/master/API.md#update).
    /// 
    /// Update Tautulli.
    Future<void> update() async => _commandUpdate(_client);

    /// Handler for [update_check](https://github.com/Tautulli/Tautulli/blob/master/API.md#update_check).
    /// 
    /// Check for Tautulli updates.
    Future<bool> updateCheck() async => _commandUpdateCheck(_client);
}
