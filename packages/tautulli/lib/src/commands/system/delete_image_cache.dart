part of tautulli_commands;

Future<void> _commandDeleteImageCache(Dio client) async {
    try {
        Response response = await client.get('/',
            queryParameters: {
                'cmd': 'delete_image_cache',
            },
        );
        if((response.data['response']['result'] as String) != 'success') {
            throw Exception('Tautulli image cache could not be deleted: ${response.data['response']['result']}');
        }
    } catch(error, stack) {
        return Future.error(error, stack);
    }
}
