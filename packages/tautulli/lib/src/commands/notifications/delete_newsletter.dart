part of tautulli_commands;

Future<void> _commandDeleteNewsletter(Dio client, {
    @required String newsletterId,
}) async {
    assert(newsletterId != null, 'newsletterId cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'delete_newsletter',
            'newsletter_id': newsletterId,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(throw Exception(response.data['response']['message']));
    }
}
