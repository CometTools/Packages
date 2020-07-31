part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls related to notifications within Tautulli.
/// 
/// [TautulliCommandHandler_Notifications] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Notifications {
    final Dio _client;

    /// Create a notification command handler using an initialized [Dio] client.
    TautulliCommandHandler_Notifications(this._client);

    /// Handler for [add_newsletter_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#add_newsletter_config).
    /// 
    /// Add a new notification agent.
    /// 
    /// - `agentId` (required): The ID of the agent.
    Future<void> addNewsletterConfig({
        @required int agentId,
    }) async => _commandAddNewsletterConfig(_client, agentId: agentId);

    /// Handler for [add_notifier_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#add_notifier_config).
    /// 
    /// Add a new notification agent.
    /// 
    /// - `agentId` (required): The ID of the agent.
    Future<void> addNotifierConfig({
        @required int agentId,
    }) async => _commandAddNotifierConfig(_client, agentId: agentId);

    /// Handler for [delete_mobile_device](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_mobile_device).
    /// 
    /// Remove a mobile device from the database.
    /// 
    /// - `mobileDeviceId` (required): The mobile device identifier to delete.
    Future<void> deleteMobileDevice({
        @required int mobileDeviceId,
    }) async => _commandDeleteMobileDevice(_client, mobileDeviceId: mobileDeviceId);

    /// Handler for [delete_newsletter](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_newsletter).
    /// 
    /// Remove a newsletter from the database.
    /// 
    /// - `newsletterId` (required): The newsletter identifier to delete.
    Future<void> deleteNewsletter({
        @required int newsletterId,
    }) async => _commandDeleteNewsletter(_client, newsletterId: newsletterId);

    /// Handler for [delete_notifier](https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_notifier).
    /// 
    /// Remove a notifier from the database.
    /// 
    /// - `notifierId` (required): The notifier identifier to delete.
    Future<void> deleteNotifier({
        @required int notifierId,
    }) async => _commandDeleteNotifier(_client, notifierId: notifierId);

    /// Handler for [notify_recently_added](https://github.com/Tautulli/Tautulli/blob/master/API.md#notify_recently_added).
    /// 
    /// Send a recently added notification using Tautulli.
    /// 
    /// - `ratingKey` (required): Identifier/rating key for the content that was added.
    /// - `notifierId`: The identifier of the notification agent. If not supplied, the notification will send on all enabled agents.
    Future<void> notifyRecentlyAdded({
        @required int ratingKey,
        int notifierId,
    }) async => _commandNotifyRecentlyAdded(_client, ratingKey: ratingKey, notifierId: notifierId);

    /// Handler for [register_device](https://github.com/Tautulli/Tautulli/blob/master/API.md#register_device).
    /// 
    /// Registers the Tautulli Android App for notifications.
    /// 
    /// - `deviceName` (required): The device name of the Tautulli Android App.
    /// - `deviceId` (required): The OneSignal device id of the Tautulli Android App.
    /// - `friendlyName`: A friendly name to identify the mobile device
    Future<void> registerDevice({
        @required String deviceName,
        @required String deviceId,
        String friendlyName,
    }) async => _commandRegisterDevice(_client, deviceId: deviceId, deviceName: deviceName, friendlyName: friendlyName);

    /// Handler for [set_mobile_device_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_mobile_device_config).
    /// 
    /// Configure an existing mobile device agent.
    /// 
    /// - `mobileDeviceId` (required): The mobile device config to update.
    /// - `friendlyName`: An optional friendly name to identify the mobile device.
    Future<void> setMobileDeviceConfig({
        @required int mobileDeviceId,
        String friendlyName,
    }) async => _commandSetMobileDeviceConfig(_client, mobileDeviceId: mobileDeviceId, friendlyName: friendlyName);

    /// Handler for [set_newsletter_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_newsletter_config).
    /// 
    /// Configure an existing newsletter agent.
    /// 
    /// - `agentId` (required): The newsletter type of the newsletter.
    /// - `newsletterId` (required): The newsletter config to update.
    /// - `newsletterOptions` **(options)**: A map containing the configuration options for the newsletter.
    Future<void> setNewsletterConfig({
        @required int newsletterId,
        @required int agentId,
        @required Map<String, dynamic> newsletterOptions,
    }) async => _commandSetNewsletterConfig(_client, newsletterId: newsletterId, agentId: agentId, newsletterOptions: newsletterOptions);

    /// Handler for [set_notifier_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_notifier_config).
    /// 
    /// Configure an existing notification agent.
    /// 
    /// - `agentId` (required): The agent of the notifier.
    /// - `notifierId` (required): The notifier config to update.
    /// - `notifierOptions` **(options)**: A map containing the configuration options for the notifier.
    Future<void> setNotifierConfig({
        @required int agentId,
        @required int notifierId,
        @required Map<String, dynamic> notifierOptions,
    }) async => _commandSetNotifierConfig(_client, agentId: agentId, notifierId: notifierId, notifierOptions: notifierOptions);
}
