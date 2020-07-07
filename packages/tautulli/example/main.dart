import 'package:tautulli/tautulli.dart';

void main() async {
    // The host must include the protocol
    // If required, the host should include the port and the base URL as well
    String host = 'https://www.mkultra.io/tautulli';
    // Your key can be fetched from the Tautulli web GUI
    String key = '668133da953e4e9e911de5d7b20a152b';
    Tautulli tautulli = Tautulli(host: host, apiKey: key);
    // Run the `arnold` command for example, which fetches an Arnold Schwarzenegger quote
    await tautulli.miscellaneous.arnold().then((quote) => print(quote));
}
