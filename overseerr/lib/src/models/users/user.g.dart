// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverseerrUserPage _$OverseerrUserPageFromJson(Map<String, dynamic> json) {
  return OverseerrUserPage(
    pageInfo:
        OverseerrPageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
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
