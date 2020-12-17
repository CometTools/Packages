part of sonarr_commands;

Future<List<SonarrLanguageProfile>> _commandGetLanguageProfiles(Dio client) async {
    Response response = await client.get('v3/languageprofile');
    return (response.data as List).map((profile) => SonarrLanguageProfile.fromJson(profile)).toList();
}
