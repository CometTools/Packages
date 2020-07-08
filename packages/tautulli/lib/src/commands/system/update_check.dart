part of tautulli_commands;

Future<bool> _commandUpdateCheck(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'update_check',
            },
        );
        return (response.data['response']['data']['update'] as bool);
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
