import 'package:meta/meta.dart';

class Tautulli {
    final String _host;
    final String _apiKey;

    Tautulli._internal(this._host, this._apiKey);
    factory Tautulli({
        @required String host,
        @required String apiKey,
    }) => Tautulli._internal(host, apiKey);

    /// Returns the host used to connect to Tautulli
    String get host => _host;
    /// Returns the API key used to connect to Tautulli
    String get apiKey => _apiKey;
}
