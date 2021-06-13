import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import './user_result.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _OverseerrUserPageInfo {
  @JsonKey(name: 'pages')
  int pages;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'results')
  int results;

  @JsonKey(name: 'page')
  int page;

  _OverseerrUserPageInfo({
    required this.pages,
    required this.pageSize,
    required this.results,
    required this.page,
  });

  /// Returns a JSON-encoded string version of this object.
  @override
  String toString() => json.encode(this.toJson());

  /// Deserialize a JSON map to a [_OverseerrUserPageInfo] object.
  factory _OverseerrUserPageInfo.fromJson(Map<String, dynamic> json) =>
      _$_OverseerrUserPageInfoFromJson(json);

  /// Serialize a [_OverseerrUserPageInfo] object to a JSON map.
  Map<String, dynamic> toJson() => _$_OverseerrUserPageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class OverseerrUserPage {
  @JsonKey(name: 'pageInfo')
  _OverseerrUserPageInfo pageInfo;

  @JsonKey(name: 'results')
  List<OverseerrUser> results;

  OverseerrUserPage({
    required this.pageInfo,
    required this.results,
  });

  /// Returns a JSON-encoded string version of this object.
  @override
  String toString() => json.encode(this.toJson());

  /// Deserialize a JSON map to a [OverseerrUserPage] object.
  factory OverseerrUserPage.fromJson(Map<String, dynamic> json) =>
      _$OverseerrUserPageFromJson(json);

  /// Serialize a [OverseerrUserPage] object to a JSON map.
  Map<String, dynamic> toJson() => _$OverseerrUserPageToJson(this);
}
