part of tautulli_types;

/// Enumerator to handle all media types used in Tautulli.
enum TautulliMediaType {
    MOVIE,
    SHOW,
    SEASON,
    EPISODE,
    ARTIST,
    ALBUM,
    TRACK,
}

/// Extension on [TautulliMediaType] to implement extended functionality.
extension TautulliMediaTypeExtension on TautulliMediaType {
    /// The actual value/key for media types used in Tautulli.
    String get value {
        switch(this) {
            case TautulliMediaType.MOVIE: return 'movie';
            case TautulliMediaType.SHOW: return 'show';
            case TautulliMediaType.SEASON: return 'season';
            case TautulliMediaType.EPISODE: return 'episode';
            case TautulliMediaType.ARTIST: return 'artist';
            case TautulliMediaType.ALBUM: return 'album';
            case TautulliMediaType.TRACK: return 'track';
        }
        throw Exception('Invalid TautulliMediaType');
    }
}
