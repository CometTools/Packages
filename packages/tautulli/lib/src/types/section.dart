part of tautulli_types;

/// Enumerator to handle all section types used in Tautulli.
enum TautulliSectionType {
    MOVIE,
    SHOW,
    ARTIST,
    PHOTO,
    NULL,
}

/// Extension on [TautulliSectionType] to implement extended functionality.
extension TautulliSectionTypeExtension on TautulliSectionType {
    /// The actual value/key for section types used in Tautulli.
    String get value {
        switch(this) {
            case TautulliSectionType.MOVIE: return 'movie';
            case TautulliSectionType.SHOW: return 'show';
            case TautulliSectionType.ARTIST: return 'artist';
            case TautulliSectionType.PHOTO: return 'photo';
            case TautulliSectionType.NULL: return '';
        }
        return null;
    }
}
