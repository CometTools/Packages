part of radarr_commands;

Future<RadarrQualityProfile> _commandGetQualityProfile(Dio client, {
    @required int profileId,
}) async {
    assert(profileId != null, 'profileId cannot be null.');
    Response response = await client.get('qualityprofile/$profileId');
    return RadarrQualityProfile.fromJson(response.data);
}
