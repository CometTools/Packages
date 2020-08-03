import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/types.dart';
import 'package:tautulli/utilities.dart';

part 'single_library.g.dart';

/// Model to store data about a single library from Plex.
/// 
/// This model is typically fetched using `getLibrary()`, and retrieves slightly different data than `getLibraries()`.
/// All libraries through `getLibraries()` will return a list of [TautulliLibrary] objects.
@JsonSerializable()
class TautulliSingleLibrary {
    /// The row ID of the library in Tautulli.
    @JsonKey(name: 'row_id')
    final int rowId;

    @JsonKey(name: 'server_id')
    final String serverId;

    /// The library's section ID.
    @JsonKey(name: 'section_id')
    final int sectionId;

    /// THe name of the library section in Plex.
    @JsonKey(name: 'section_name')
    final String sectionName;

    /// The type of content stored in this library.
    @JsonKey(name: 'section_type', toJson: TautulliUtilities.sectionTypeToString, fromJson: TautulliUtilities.sectionTypeToObject)
    final TautulliSectionType sectionType;

    /// The library's thumbnail in Tautulli.
    @JsonKey(name: 'library_thumb')
    final String libraryThumb;

    /// The library's artwork in Tautulli.
    @JsonKey(name: 'library_art')
    final String libraryArt;

    /// The amount of content in this library.
    @JsonKey(name: 'count')
    final int count;

    /// The amount of parent content in this library (e.g., seasons, albums).
    @JsonKey(name: 'parent_count')
    final int parentCount;

    /// The amount of child content in this library (e.g., songs, episodes).
    @JsonKey(name: 'child_count')
    final int childCount;

    /// Is the library active?
    @JsonKey(name: 'is_active', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isActive;

    /// Are notifications enabled for the library?
    @JsonKey(name: 'do_notify', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool doNotify;

    /// Are notifications enable for the library on creation of content?
    @JsonKey(name: 'do_notify_created', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool doNotifyCreated;

    /// Are you currently tracking/keeping history for this library?
    @JsonKey(name: 'keep_history', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool keepSection;

    /// Is the library section deleted?
    @JsonKey(name: 'deleted_section', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool deletedSection;

    TautulliSingleLibrary({
        this.rowId,
        this.serverId,
        this.sectionId,
        this.sectionName,
        this.sectionType,
        this.libraryThumb,
        this.libraryArt,
        this.count,
        this.childCount,
        this.parentCount,
        this.isActive,
        this.doNotify,
        this.doNotifyCreated,
        this.keepSection,
        this.deletedSection,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliSingleLibrary] object.
    factory TautulliSingleLibrary.fromJson(Map<String, dynamic> json) => _$TautulliSingleLibraryFromJson(json);
    /// Serialize a [TautulliSingleLibrary] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliSingleLibraryToJson(this);
}
