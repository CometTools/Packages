import 'package:tautulli/tautulli.dart';
import 'package:test/test.dart';

void main() {
    _getters();
}

void _getters() {
    group('Getters', () {
        String host = 'http://192.168.1.123:8181';
        String key = '1234567890';
        Tautulli tautulli = Tautulli(
            host: host,
            apiKey: key,
        );
        test('host', () {
            expect(tautulli.host, host); 
        });
        test('apiKey', () {
            expect(tautulli.apiKey, key);
        });
    });
}
