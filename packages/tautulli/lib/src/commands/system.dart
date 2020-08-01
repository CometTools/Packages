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

    /// Handler for [delete_newsletter_log](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_newsletter_log).
    /// 
    /// Delete the Tautulli newsletter logs.
    Future<void> deleteNewsletterLog() async => _commandDeleteNewsletterLog(_client);

    /// Handler for [delete_notification_log](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_notification_log).
    /// 
    /// Delete the Tautulli notification logs.
    Future<void> deleteNotificationLog() async => _commandDeleteNotificationLog(_client);

    /// Handler for [pms_image_proxy](https://github.com/Tautulli/Tautulli/blob/master/API.md#pms_image_proxy).
    /// 
    /// Gets an image from the PMS and saves it to the image cache directory. Returns a Uint8List of the image buffer.
    /// 
    /// One of `image` or `ratingKey` are required, but both cannot be defined.
    /// 
    /// - `image` (required*): Path to the image to download from Plex, OR
    /// - `ratingKey` (required*): Rating key of the content.
    /// - `width`: Width to scale the image to.
    /// - `height`: Height to scale the image to.
    /// - `opacity`: Set the opacity of the image to (0 to 100).
    /// - `background`: Set the background color (HEX colors, e.g. 282828).
    /// - `blur`: How much to the blur the image.
    /// - `imageFormat`: The format to download the image as (jpg, png, etc.).
    /// - `fallbackImage`: A fallback image to return if there is no image.
    /// - `refresh`: Whether to refresh the image cache first.
    Future<Uint8List> pmsImageProxy({
        String image,
        int ratingKey,
        int width,
        int height,
        int opacity,
        String background,
        int blur,
        String imageFormat,
        TautulliFallbackImage fallbackImage,
        bool refresh,
    }) async => _commandPMSImageProxy(
        _client,
        image: image,
        ratingKey: ratingKey,
        width: width,
        height: height,
        opacity: opacity,
        background: background,
        blur: blur,
        imageFormat: imageFormat,
        fallbackImage: fallbackImage,
        refresh: refresh,
    );

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
