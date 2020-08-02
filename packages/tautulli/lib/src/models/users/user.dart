import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/utilities.dart';

part 'user.g.dart';

/// Model for a single Tautulli user's data in Tautulli.
/// 
/// Depending on how the [TautulliUser] object was created, the user thumbnail will be in either:
/// - `thumb` from `getUsers()`
/// - `userThumb` from `getUser(userId)`
/// 
/// The filtered strings and the server token will be null when fetching a single user via `getUser()`.
@JsonSerializable(explicitToJson: true)
class TautulliUser {
    /// The row identifier of the user.
    @JsonKey(name: 'row_id')
    final int rowId;

    /// The user identifier.
    @JsonKey(name: 'user_id')
    final int userId;

    /// Friendly name of the user.
    @JsonKey(name: 'friendly_name')
    final String friendlyName;

    /// Thumbnail link of the user.
    @JsonKey(name: 'thumb')
    final String thumb;

    /// Thumbnail link of the user.
    @JsonKey(name: 'user_thumb')
    final String userThumb;

    /// Email of the user.
    @JsonKey(name: 'email')
    final String email;

    /// Is the user active?
    @JsonKey(name: 'is_active', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isActive;

    /// Is the user an admin?
    @JsonKey(name: 'is_admin', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isAdmin;

    /// Is the user a home user?
    @JsonKey(name: 'is_home_user', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isHomeUser;

    /// Is the user allowed to sync content?
    @JsonKey(name: 'is_allow_sync', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isAllowSync;

    /// Is the user restricted?
    @JsonKey(name: 'is_restricted', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isRestricted;

    /// Does the user have notifications enabled?
    @JsonKey(name: 'do_notify', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool doNotify;

    /// Is history being tracked for the user?
    @JsonKey(name: 'keep_history', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool keepHistory;

    /// Is the user allowed guest access to Tautulli?
    @JsonKey(name: 'allow_guest', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool allowGuest;

    /// The user's server token.
    @JsonKey(name: 'server_token')
    final String serverToken;

    /// List of libraries that are shared with the user.
    @JsonKey(name: 'shared_libraries', toJson: _sharedLibrariesToJson, fromJson: _sharedLibrariesFromJson)
    final List<String> sharedLibraries;

    /// Filters applied to all libraries for this user.
    @JsonKey(name: 'filter_all')
    final String filterAll;

    /// Filters applied to movie libraries for this user.
    @JsonKey(name: 'filter_movies')
    final String filterMovies;

    /// Filters applied to television libraries for this user.
    @JsonKey(name: 'filter_tv')
    final String filterTv;
    
    /// Filters applied to music libraries for this user.
    @JsonKey(name: 'filter_music')
    final String filterMusic;

    /// Filters applied to photos libraries for this user.
    @JsonKey(name: 'filter_photos')
    final String filterPhotos;

    TautulliUser({
        this.rowId,
        this.userId,
        this.friendlyName,
        this.thumb,
        this.userThumb,
        this.email,
        this.isActive,
        this.isAdmin,
        this.isHomeUser,
        this.isAllowSync,
        this.isRestricted,
        this.doNotify,
        this.keepHistory,
        this.allowGuest,
        this.serverToken,
        this.sharedLibraries,
        this.filterAll,
        this.filterMovies,
        this.filterTv,
        this.filterMusic,
        this.filterPhotos,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliUser] object.
    factory TautulliUser.fromJson(Map<String, dynamic> json) => _$TautulliUserFromJson(json);
    /// Serialize a [TautulliUser] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliUserToJson(this);

    static List<String> _sharedLibrariesFromJson(dynamic list) {
        if(list is List) return List<String>.from(list);
        return list.split(';');
    }
    
    static String _sharedLibrariesToJson(List<String> list) => list?.join(";") ?? '';
}
