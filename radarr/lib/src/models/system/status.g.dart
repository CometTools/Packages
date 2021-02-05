// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadarrSystemStatus _$RadarrSystemStatusFromJson(Map<String, dynamic> json) {
  return RadarrSystemStatus(
    version: json['version'] as String,
    buildTime: json['buildTime'] as String,
    isDebug: json['isDebug'] as bool,
    isProduction: json['isProduction'] as bool,
    isAdmin: json['isAdmin'] as bool,
    isUserInteractive: json['isUserInteractive'] as bool,
    startupPath: json['startupPath'] as String,
    appData: json['appData'] as String,
    osName: json['osName'] as String,
    osVersion: json['osVersion'] as String,
    isNetCore: json['isNetCore'] as bool,
    isMono: json['isMono'] as bool,
    isLinux: json['isLinux'] as bool,
    isOsx: json['isOsx'] as bool,
    isWindows: json['isWindows'] as bool,
    isDocker: json['isDocker'] as bool,
    mode: json['mode'] as String,
    branch: json['branch'] as String,
    authentication: json['authentication'] as String,
    sqliteVersion: json['sqliteVersion'] as String,
    migrationVersion: json['migrationVersion'] as int,
    urlBase: json['urlBase'] as String,
    runtimeVersion: json['runtimeVersion'] as String,
    runtimeName: json['runtimeName'] as String,
    startTime: json['startTime'] as String,
    packageVersion: json['packageVersion'] as String,
    packageAuthor: json['packageAuthor'] as String,
    packageUpdateMechanism: json['packageUpdateMechanism'] as String,
  );
}

Map<String, dynamic> _$RadarrSystemStatusToJson(RadarrSystemStatus instance) =>
    <String, dynamic>{
      'version': instance.version,
      'buildTime': instance.buildTime,
      'isDebug': instance.isDebug,
      'isProduction': instance.isProduction,
      'isAdmin': instance.isAdmin,
      'isUserInteractive': instance.isUserInteractive,
      'startupPath': instance.startupPath,
      'appData': instance.appData,
      'osName': instance.osName,
      'osVersion': instance.osVersion,
      'isNetCore': instance.isNetCore,
      'isMono': instance.isMono,
      'isLinux': instance.isLinux,
      'isOsx': instance.isOsx,
      'isWindows': instance.isWindows,
      'isDocker': instance.isDocker,
      'mode': instance.mode,
      'branch': instance.branch,
      'authentication': instance.authentication,
      'sqliteVersion': instance.sqliteVersion,
      'migrationVersion': instance.migrationVersion,
      'urlBase': instance.urlBase,
      'runtimeVersion': instance.runtimeVersion,
      'runtimeName': instance.runtimeName,
      'startTime': instance.startTime,
      'packageVersion': instance.packageVersion,
      'packageAuthor': instance.packageAuthor,
      'packageUpdateMechanism': instance.packageUpdateMechanism,
    };
