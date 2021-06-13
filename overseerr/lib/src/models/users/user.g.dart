// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OverseerrUserPageInfo _$_OverseerrUserPageInfoFromJson(
    Map<String, dynamic> json) {
  return _OverseerrUserPageInfo(
    pages: json['pages'] as int,
    pageSize: json['pageSize'] as int,
    results: json['results'] as int,
    page: json['page'] as int,
  );
}

Map<String, dynamic> _$_OverseerrUserPageInfoToJson(
        _OverseerrUserPageInfo instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'pageSize': instance.pageSize,
      'results': instance.results,
      'page': instance.page,
    };

OverseerrUserPage _$OverseerrUserPageFromJson(Map<String, dynamic> json) {
  return OverseerrUserPage(
    pageInfo: _OverseerrUserPageInfo.fromJson(
        json['pageInfo'] as Map<String, dynamic>),
    results: (json['results'] as List<dynamic>)
        .map((e) => OverseerrUser.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$OverseerrUserPageToJson(OverseerrUserPage instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo.toJson(),
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
