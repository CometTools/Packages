// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whois_subnet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliWHOISSubnet _$TautulliWHOISSubnetFromJson(Map<String, dynamic> json) {
  return TautulliWHOISSubnet(
    cidr: json['cidr'] as String,
    name: json['name'] as String,
    handle: json['handle'] as String,
    range: json['range'] as String,
    description: json['description'] as String,
    country: json['country'] as String,
    state: json['state'] as String,
    city: json['city'] as String,
    address: json['address'] as String,
    postalCode: json['postal_code'] as String,
    emails: (json['emails'] as List)?.map((e) => e as String)?.toList(),
    created: json['created'] as String,
    updated: json['updated'] as String,
  );
}

Map<String, dynamic> _$TautulliWHOISSubnetToJson(
        TautulliWHOISSubnet instance) =>
    <String, dynamic>{
      'cidr': instance.cidr,
      'name': instance.name,
      'handle': instance.handle,
      'range': instance.range,
      'description': instance.description,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'emails': instance.emails,
      'created': instance.created,
      'updated': instance.updated,
    };
