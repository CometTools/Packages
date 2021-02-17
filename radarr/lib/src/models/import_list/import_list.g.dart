// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrImportList _$RadarrImportListFromJson(Map<String, dynamic> json) {
  return RadarrImportList(
    enabled: json['enabled'] as bool,
    enableAuto: json['enableAuto'] as bool,
    shouldMonitor: json['shouldMonitor'] as bool,
    rootFolderPath: json['rootFolderPath'] as String,
    qualityProfileId: json['qualityProfileId'] as int,
    searchOnAdd: json['searchOnAdd'] as bool,
    minimumAvailability: RadarrUtilities.availabilityFromJson(
        json['minimumAvailability'] as String),
    listType: json['listType'] as String,
    listOrder: json['listOrder'] as int,
    name: json['name'] as String,
    fields: (json['fields'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
    implementationName: json['implementationName'] as String,
    implementation: json['implementation'] as String,
    configContract: json['configContract'] as String,
    infoLink: json['infoLink'] as String,
    tags: (json['tags'] as List)?.map((e) => e as int)?.toList(),
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$RadarrImportListToJson(RadarrImportList instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'enableAuto': instance.enableAuto,
      'shouldMonitor': instance.shouldMonitor,
      'rootFolderPath': instance.rootFolderPath,
      'qualityProfileId': instance.qualityProfileId,
      'searchOnAdd': instance.searchOnAdd,
      'minimumAvailability':
          RadarrUtilities.availabilityToJson(instance.minimumAvailability),
      'listType': instance.listType,
      'listOrder': instance.listOrder,
      'name': instance.name,
      'fields': instance.fields,
      'implementationName': instance.implementationName,
      'implementation': instance.implementation,
      'configContract': instance.configContract,
      'infoLink': instance.infoLink,
      'tags': instance.tags,
      'id': instance.id,
    };
