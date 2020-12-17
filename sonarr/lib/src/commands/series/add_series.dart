part of sonarr_commands;

Future<SonarrSeries> _commandAddSeries(Dio client, {
    @required int tvdbId,
    @required int profileId,
    @required int languageProfileId,
    @required String title,
    @required String titleSlug,
    @required List<SonarrSeriesImage> images,
    @required List<SonarrSeriesSeason> seasons,
    String path,
    String rootFolderPath,
    int tvRageId,
    List<int> tags,
    bool seasonFolder = true,
    bool monitored = true,
    bool ignoreEpisodesWithFiles = false,
    bool ignoreEpisodesWithoutFiles = false,
    bool searchForMissingEpisodes = false,
}) async {
    assert(tvdbId != null, 'tvdbId cannot be null');
    assert(profileId != null, 'profileId cannot be null');
    assert(title != null, 'title cannot be null');
    assert(titleSlug != null, 'titleSlug cannot be null');
    assert(images != null, 'images cannot be null');
    assert(seasons != null, 'seasons cannot be null');
    if(path == null) assert(rootFolderPath != null, 'path and rootFolderPath cannot both be null');
    if(path != null) assert(rootFolderPath == null, 'path and rootFolderPath cannot both be defined');
    Response response = await client.post('series', data: {
        'tvdbId': tvdbId,
        'profileId': profileId,
        if(languageProfileId != null) 'languageProfileId': languageProfileId,
        'title': title,
        'titleSlug': titleSlug,
        'images': images,
        'seasons': seasons,
        if(path != null) 'path': path,
        if(rootFolderPath != null) 'rootFolderPath': rootFolderPath,
        if(tvRageId != null) 'tvRageId': tvRageId,
        if(seasonFolder != null) 'seasonFolder': seasonFolder,
        if(monitored != null) 'monitored': monitored,
        if(tags != null) 'tags': tags,
        'addOptions': {
            if(ignoreEpisodesWithFiles != null) 'ignoreEpisodesWithFiles': ignoreEpisodesWithFiles,
            if(ignoreEpisodesWithoutFiles != null) 'ignoreEpisodesWithoutFiles': ignoreEpisodesWithoutFiles,
            if(searchForMissingEpisodes != null) 'searchForMissingEpisodes': searchForMissingEpisodes,
        },
    });
    return SonarrSeries.fromJson(response.data);
}
