part of tautulli_commands;

Future<void> _commandNotifyRecentlyAdded(Dio client, {
    @required int ratingKey,
    int notifierId,
}) async {
    assert(ratingKey != null, 'ratingKey cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'notify_recently_added',
            'rating_key': ratingKey,
            if(notifierId != null) 'notifier_id': notifierId,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(throw Exception(response.data['response']['message']));
    }
}
