// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TautulliUsersTable _$TautulliUsersTableFromJson(Map<String, dynamic> json) {
  return TautulliUsersTable(
    users: TautulliUsersTable._usersToObjectArray(json['data'] as List),
    draw: json['draw'] as int,
    recordsTotal: json['recordsTotal'] as int,
    recordsFiltered: json['recordsFiltered'] as int,
  );
}

Map<String, dynamic> _$TautulliUsersTableToJson(TautulliUsersTable instance) =>
    <String, dynamic>{
      'data': TautulliUsersTable._usersToMap(instance.users),
      'draw': instance.draw,
      'recordsTotal': instance.recordsTotal,
      'recordsFiltered': instance.recordsFiltered,
    };
