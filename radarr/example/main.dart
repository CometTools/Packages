import 'package:radarr/radarr.dart';

void main() async {
    // The host must include the protocol
    // If required, the host should include the port and the base URL as well
    String host = 'http://192.168.1.111:7878';
    // Your key can be fetched from the Radarr web GUI
    String key = '<apikey>';
    Radarr api = Radarr(host: host, apiKey: key);
    // Run your commands
}
