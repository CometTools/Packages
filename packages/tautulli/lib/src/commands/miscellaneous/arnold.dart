part of tautulli;

Future<String> _commandArnold(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'arnold',
            },
        );
        return response.data['response']['data'];
    } catch(error, stack) {
        //Return the error as a [Future.error] 
        return Future.error(error, stack);
    }
}
