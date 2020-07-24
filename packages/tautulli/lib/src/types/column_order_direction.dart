part of tautulli_types;

/// Enumerator to handle all column order directions used in Tautulli.
enum TautulliColumnOrderDirection {
    ASCENDING,
    DESCENDING,
}

/// Extension on [TautulliColumnOrderDirection] to implement extended functionality.
extension TautulliColumnOrderDirectionExtension on TautulliColumnOrderDirection {
    /// The actual value/key for column order directions used in Tautulli.
    String get value {
        switch(this) {
            case TautulliColumnOrderDirection.ASCENDING: return 'asc';
            case TautulliColumnOrderDirection.DESCENDING: return 'desc';
        }
        throw Exception('Invalid TautulliColumnOrderDirection');
    }
}
