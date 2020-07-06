import 'package:tautulli/tautulli.dart';

void main() async {
    String host = 'https://192.168.1.123:8181/tautulli';
    String key = '1234567890';
    Tautulli tautulli = Tautulli(
        host: host,
        apiKey: key,
        // Setting this to false would allow an invalid TLS certificate to be used
        strictTLS: false,
    );
}
