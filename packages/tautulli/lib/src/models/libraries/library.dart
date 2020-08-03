import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/types.dart';
import 'package:tautulli/utilities.dart';

part 'library.g.dart';

/// Model to store data about a library from Plex.
@JsonSerializable()
class TautulliLibrary {
    /// The library's section ID.
    @JsonKey(name: 'section_id', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int sectionId;

    /// THe name of the library section in Plex.
    @JsonKey(name: 'section_name')
    final String sectionName;

    /// The type of content stored in this library.
    @JsonKey(name: 'section_type', toJson: TautulliUtilities.sectionTypeToString, fromJson: TautulliUtilities.sectionTypeToObject)
    final TautulliSectionType sectionType;

    /// The metadata agent being used for the library.
    @JsonKey(name: 'agent')
    final String agent;

    /// The library's thumbnail in Tautulli.
    @JsonKey(name: 'thumb')
    final String thumb;

    /// The library's artwork in Tautulli.
    @JsonKey(name: 'art')
    final String art;

    /// The amount of content in this library.
    @JsonKey(name: 'count', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int count;

    /// Is the library active?
    @JsonKey(name: 'is_active', toJson: TautulliUtilities.booleanToInteger, fromJson: TautulliUtilities.integerToBoolean)
    final bool isActive;

    /// The amount of parent content in this library (e.g., seasons, albums).
    @JsonKey(name: 'parent_count', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int parentCount;

    /// The amount of child content in this library (e.g., songs, episodes).
    @JsonKey(name: 'child_count', toJson: TautulliUtilities.integerToString, fromJson: TautulliUtilities.stringToInteger)
    final int childCount;

    TautulliLibrary({
        this.sectionId,
        this.sectionName,
        this.sectionType,
        this.agent,
        this.thumb,
        this.art,
        this.count,
        this.isActive,
        this.parentCount,
        this.childCount,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliLibrary] object.
    factory TautulliLibrary.fromJson(Map<String, dynamic> json) => _$TautulliLibraryFromJson(json);
    /// Serialize a [TautulliLibrary] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliLibraryToJson(this);
}
