part of overseerr_commands;

/// Facilitates, encapsulates, and manages individual calls related to requests within Overseerr.
///
/// [OverseerrCommandHandler_Request] internally handles routing the HTTP client to the API calls.
class OverseerrCommandHandler_Request {
  final Dio _client;

  /// Create a command handler using an initialized [Dio] client.
  OverseerrCommandHandler_Request(this._client);

  /// Handler for [request/count](https://api-docs.overseerr.dev/#/request/get_request_count).
  ///
  /// Returns the number of pending and approved requests.
  Future<OverseerrRequestCount> getRequestCount() async =>
      _commandGetRequestCount(_client);
}
