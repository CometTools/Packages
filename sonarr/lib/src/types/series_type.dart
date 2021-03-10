part of sonarr_types;

/// Enumerator to handle all series types used in Sonarr.
enum SonarrSeriesType {
    STANDARD,
    DAILY,
    ANIME,
}

/// Extension on [SonarrSeriesType] to implement extended functionality.
extension SonarrSeriesTypeExtension on SonarrSeriesType {
    /// Given a String, will return the correct `SonarrSeriesType` object.
    SonarrSeriesType? from(String? type) {
        switch(type) {
            case 'standard': return SonarrSeriesType.STANDARD;
            case 'daily': return SonarrSeriesType.DAILY;
            case 'anime': return SonarrSeriesType.ANIME;
            default: return null;
        }
    }

    /// The actual value/key for media types used in Sonarr.
    String? get value {
        switch(this) {
            case SonarrSeriesType.STANDARD: return 'standard';
            case SonarrSeriesType.DAILY: return 'daily';
            case SonarrSeriesType.ANIME: return 'anime';
            default: return null;
        }
    }
}
