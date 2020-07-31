part of tautulli_commands;

Future<String> _commandAddNewsletterConfig(Dio client, {
    @required int agentId,
}) async {
    assert(agentId != null, 'agentId cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'add_newsletter_config',
            'agent_id': agentId,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return response.data['response']['data'];
        case 'error':
        default: throw Exception(throw Exception(response.data['response']['message']));
    }
}
