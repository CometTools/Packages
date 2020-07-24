part of tautulli_commands;

Future<String> _commandArnold(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'arnold',
            },
        );
        switch((response.data['response']['result'] as String)) {
            case 'success': return response.data['response']['data'];
            case 'error':
            default: throw Exception(throw Exception(response.data['response']['message']));
        }
    } catch(error, stack) {
        //Return the error as a [Future.error] 
        return Future.error(error, stack);
    }
}
