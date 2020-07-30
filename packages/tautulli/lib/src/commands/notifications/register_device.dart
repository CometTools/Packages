part of tautulli_commands;

Future<void> _commandRegisterDevice(Dio client, {
    @required String deviceId,
    @required String deviceName,
    String friendlyName,
}) async {
    assert(deviceId != null, 'deviceId cannot be null');
    assert(deviceName != null, 'deviceName cannot be null');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'register_device',
            'device_name': deviceName,
            'device_id': deviceId,
            if(friendlyName != null) 'friendly_name': friendlyName,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(throw Exception(response.data['response']['message']));
    }
}