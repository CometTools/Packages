part of tautulli_types;

/// Enumerator to handle all image hosting services
enum TautulliImageHostService {
    IMGUR,
    CLOUDINARY,
}

/// Extension on [TautulliImageHostService] to implement extended functionality.
extension TautulliImageHostServiceExtension on TautulliImageHostService {
    /// The actual value/key for image hosting services in Tautulli.
    String get value {
        switch(this) {
            case TautulliImageHostService.IMGUR: return 'imgur';
            case TautulliImageHostService.CLOUDINARY: return 'cloudinary';
        }
        throw Exception('Invalid TautulliImageHostService');
    }
}
