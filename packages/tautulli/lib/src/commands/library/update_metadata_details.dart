part of tautulli_commands;

Future<void> _commandUpdateMetadataDetails(Dio client, {
    @required String oldRatingKey,
    @required String newRatingKey,
    @required TautulliMediaType mediaType,
}) async {
    assert(oldRatingKey != null, "oldRatingKey (String) cannot be null");
    assert(newRatingKey != null, "newRatingKey (String) cannot be null");
    assert(mediaType != null, "mediaType (TautulliMediaType) cannot be null");
    Response response = await client.get('/',
        queryParameters: {
            'cmd': 'update_metadata_details',
            'old_rating_key': oldRatingKey,
            'new_rating_key': newRatingKey,
            'media_type': mediaType.value,
        },
    );
    switch((response.data['response']['result'] as String)) {
        case 'success': return;
        case 'error':
        default: throw Exception(throw Exception(response.data['response']['message']));
    }
}
