part of tautulli_commands;

/// Facilitates, encapsulates, and manages individual calls for any miscellaneous calls within Tautulli.
/// 
/// [TautulliCommandHandler_Miscellaneous] internally handles routing the HTTP client to the API calls.
class TautulliCommandHandler_Miscellaneous {
    final Dio _client;

    /// Create a miscellaneous command handler using an initialized [Dio] client.
    TautulliCommandHandler_Miscellaneous(this._client);

    /// Handler for [arnold](https://github.com/Tautulli/Tautulli/blob/master/API.md#arnold).
    /// 
    /// Get to the chopper!
    Future<String> arnold() async => _commandArnold(_client);

    /// Handler for [get_date_formats](https://github.com/Tautulli/Tautulli/blob/master/API.md#get_date_formats).
    /// 
    /// Get the date and time formats used by Tautulli.
    Future<TautulliDateFormat> getDateFormats() async => _commandGetDateFormats(_client);

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
}
