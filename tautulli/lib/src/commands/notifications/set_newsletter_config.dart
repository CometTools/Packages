part of tautulli_commands;

Future<void> _commandSetNewsletterConfig(Dio client, {
    @required int agentId,
    @required int newsletterId,
    @required Map<String, dynamic> newsletterOptions,

}) async {
    assert(agentId != null, 'agentId cannot be null.');
    assert(newsletterId != null, 'newsletterId cannot be null.');
    assert(newsletterOptions != null, 'newsletterOptions cannot be null.');
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'set_newsletter_config',
            'agent_id': agentId,
            'newsletter_id': newsletterId,
            ...newsletterOptions,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(response.data['response']['message']);
    }
}
