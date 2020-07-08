import 'dart:io';
import 'package:tautulli/tautulli.dart';
import 'package:test/test.dart';

void main() {
    group('update_check', () {
        test('Successful call', () async {
            Tautulli _api = Tautulli(
                host: Platform.environment['TAUTULLI_HOST'],
                apiKey: Platform.environment['TAUTULLI_APIKEY'],
            );
            expect(await _api.system.updateCheck(), equals(isA<bool>()));
        });
        test('Unsuccessful call', () {
            Tautulli _api = Tautulli(
                host: 'http://127.0.0.1:8181',
                apiKey: 'Invalid Key',
            );
            expect(() async => await _api.system.updateCheck(), throwsA(isA<Exception>()));
        });
    });
}
