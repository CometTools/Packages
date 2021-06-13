part of overseerr_commands;

/// Facilitates, encapsulates, and manages individual calls related to users within Overseerr.
///
/// [OverseerrCommandHandler_Users] internally handles routing the HTTP client to the API calls.
class OverseerrCommandHandler_Users {
  final Dio _client;

  /// Create a command handler using an initialized [Dio] client.
  OverseerrCommandHandler_Users(this._client);

  /// Handler for [user](https://api-docs.overseerr.dev/#/public/get_user).
  ///
  /// Returns all users.
  Future<OverseerrUserPage> get({
    int? take,
    int? skip,
  }) async =>
      _commandGetUsers(
        _client,
        take: take,
        skip: skip,
      );
}
