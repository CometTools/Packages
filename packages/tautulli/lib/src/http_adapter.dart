import 'package:meta/meta.dart';

class Tautulli {
    final String _host;
    final String _apiKey;

    Tautulli._internal(this._host, this._apiKey);
    factory Tautulli({
        @required String host,
        @required String apiKey,
    }) => Tautulli._internal(host, apiKey);
}
