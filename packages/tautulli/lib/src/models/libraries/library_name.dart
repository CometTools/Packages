import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:tautulli/types.dart';
import 'package:tautulli/utilities.dart';

part 'library_name.g.dart';

/// Model to store basic name and data about a library from Plex.
@JsonSerializable()
class TautulliLibraryName {
    /// The library's section ID.
    @JsonKey(name: 'section_id')
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

    TautulliLibraryName({
        this.sectionId,
        this.sectionName,
        this.sectionType,
        this.agent,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliLibraryName] object.
    factory TautulliLibraryName.fromJson(Map<String, dynamic> json) => _$TautulliLibraryNameFromJson(json);
    /// Serialize a [TautulliLibraryName] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliLibraryNameToJson(this);
}
