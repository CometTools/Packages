part of radarr_commands;

Future<RadarrMovie> _commandAddMovie(Dio client, {
    @required RadarrMovie movie,
    @required RadarrRootFolder rootFolder,
    @required bool monitored,
    @required RadarrAvailability minimumAvailability,
    @required RadarrQualityProfile qualityProfile,
    List<RadarrTag> tags,
    bool searchForMovie,
}) async {
    assert(movie != null, 'movie cannot be null.');
    assert(rootFolder != null, 'rootFolder cannot be null.');
    assert(monitored != null, 'monitored cannot be null.');
    assert(minimumAvailability != null, 'minimumAvailability cannot be null');
    assert(qualityProfile != null, 'qualityProfile cannot be null');
    // Updating movie
    movie.monitored = monitored;
    movie.qualityProfileId = qualityProfile.id;
    movie.minimumAvailability = minimumAvailability;
    if(tags != null) movie.tags = tags.map<int>((tag) => tag.id).toList();
    // Convert to JSON, copy additional add movie-specific parameters
    Map<String, dynamic> _json = movie.toJson();
    _json['rootFolderPath'] = rootFolder.path;
    _json['addOptions'] = <String, dynamic>{ 'searchForMovie': searchForMovie ?? false };
    // Add the movie
    Response response = await client.post('movie', data: _json);
    return RadarrMovie.fromJson(response.data);
}
