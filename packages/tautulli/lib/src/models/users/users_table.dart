import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'table_user.dart';

part 'users_table.g.dart';

/// Model for the Tautulli user table from Tautulli.
/// 
/// Each individual Tautulli user data is stored in `users`, with each Tautulli user being a [TautulliUser].
@JsonSerializable(explicitToJson: true)
class TautulliUsersTable {
    /// List of [TautulliUser], each storing a single Tautulli user data.
    @JsonKey(name: 'data', fromJson: _usersToObjectArray, toJson: _usersToMap)
    final List<TautulliTableUser> users;

    /// _Unknown_
    @JsonKey(name: 'draw')
    final int draw;

    /// Total amount of records.
    @JsonKey(name: 'recordsTotal')
    final int recordsTotal;

    /// The amount of records (filtered).
    @JsonKey(name: 'recordsFiltered')
    final int recordsFiltered;

    TautulliUsersTable({
        this.users,
        this.draw,
        this.recordsTotal,
        this.recordsFiltered,
    });

    /// Returns a JSON-encoded string version of this object.
    @override
    String toString() => json.encode(this.toJson());

    /// Deserialize a JSON map to a [TautulliUsersTable] object.
    factory TautulliUsersTable.fromJson(Map<String, dynamic> json) => _$TautulliUsersTableFromJson(json);
    /// Serialize a [TautulliUsersTable] object to a JSON map.
    Map<String, dynamic> toJson() => _$TautulliUsersTableToJson(this);

    static List<TautulliTableUser> _usersToObjectArray(List<dynamic> users) => users.map((user) => TautulliTableUser.fromJson((user as Map<String, dynamic>))).toList();
    static List<Map<String, dynamic>> _usersToMap(List<TautulliTableUser> users) => users.map((user) => user.toJson()).toList();
}
