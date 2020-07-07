import 'package:tautulli/tautulli.dart';

void main() async {
    // The host must include the protocol
    // If required, the host should include the port and the base URL as well
    String host = 'http://192.168.1.123:8181/tautulli';
    // Your key can be fetched from the Tautulli web GUI
    String key = '1234567890';
    Tautulli tautulli = Tautulli(host: host, apiKey: key);
    // Run the `arnold` command for example, which fetches an Arnold Schwarzenegger quote
    await tautulli.miscellaneous.arnold().then((quote) => print(quote));
}
