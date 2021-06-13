part of overseerr_commands;

Future<OverseerrUserPage> _commandGetUsers(
  Dio client, {
  int? take,
  int? skip,
}) async {
  Response response = await client.get(
    'user',
    queryParameters: {
      if (take != null) 'take': take,
      if (skip != null) 'skip': skip,
    },
  );
  return OverseerrUserPage.fromJson(response.data);
}
