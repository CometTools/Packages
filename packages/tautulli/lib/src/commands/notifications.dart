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
    /// - `agentId` **(required)**: The ID of the agent.
    Future<void> addNewsletterConfig({
        @required int agentId,
    }) async => _commandAddNewsletterConfig(
        _client,
        agentId: agentId,
    );

    /// Handler for [add_notifier_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#add_notifier_config).
    /// 
    /// Add a new notification agent.
    /// 
    /// - `agentId` **(required)**: The ID of the agent.
    Future<void> addNotifierConfig({
        @required int agentId,
    }) async => _commandAddNotifierConfig(
        _client,
        agentId: agentId,
    );

    /// Handler for [register_device](https://github.com/Tautulli/Tautulli/blob/master/API.md#register_device).
    /// 
    /// Registers the Tautulli Android App for notifications.
    /// 
    /// `deviceName` **(required)**: The device name of the Tautulli Android App.
    /// `deviceId` **(required)**: The OneSignal device id of the Tautulli Android App.
    /// `friendlyName`: A friendly name to identify the mobile device
    Future<void> registerDevice({
        @required String deviceName,
        @required String deviceId,
        String friendlyName,
    }) async => _commandRegisterDevice(
        _client,
        deviceId: deviceId,
        deviceName: deviceName,
        friendlyName: friendlyName,
    );

    /// Handler for [set_mobile_device_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_mobile_device_config).
    /// 
    /// Configure an existing mobile device agent.
    /// 
    /// - `mobileDeviceId` **(required)**: The mobile device config to update.
    /// - `friendlyName`: An optional friendly name to identify the mobile device.
    Future<void> setMobileDeviceConfig({
        @required int mobileDeviceId,
        String friendlyName,
    }) async => _commandSetMobileDeviceConfig(
        _client,
        mobileDeviceId: mobileDeviceId,
        friendlyName: friendlyName,
    );

    /// Handler for [set_newsletter_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_newsletter_config).
    /// 
    /// Configure an existing newsletter agent.
    /// 
    /// - `agentId` **(required)**: The newsletter type of the newsletter.
    /// - `newsletterId` **(required)**: The newsletter config to update.
    /// - `newsletterOptions` **(options)**: A map containing the configuration options for the newsletter.
    Future<void> setNewsletterConfig({
        @required int newsletterId,
        @required int agentId,
        @required Map<String, dynamic> newsletterOptions,
    }) async => _commandSetNewsletterConfig(
        _client,
        newsletterId: newsletterId,
        agentId: agentId,
        newsletterOptions: newsletterOptions,
    );

    /// Handler for [set_notifier_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#set_notifier_config).
    /// 
    /// Configure an existing notification agent.
    /// 
    /// - `agentId` **(required)**: The agent of the notifier.
    /// - `notifierId` **(required)**: The notifier config to update.
    /// - `notifierOptions` **(options)**: A map containing the configuration options for the notifier.
    Future<void> setNotifierConfig({
        @required int agentId,
        @required int notifierId,
        @required Map<String, dynamic> notifierOptions,
    }) async => _commandSetNotifierConfig(
        _client,
        agentId: agentId,
        notifierId: notifierId,
        notifierOptions: notifierOptions,
    );
}
