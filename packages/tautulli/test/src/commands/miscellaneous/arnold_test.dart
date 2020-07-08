import 'dart:io';
import 'package:tautulli/tautulli.dart';
import 'package:test/test.dart';

void main() {
    group('arnold', () {
        test('Successful call', () async {
            Tautulli _api = Tautulli(
                host: Platform.environment['TAUTULLI_HOST'],
                apiKey: Platform.environment['TAUTULLI_APIKEY'],
            );
            expect(await _api.miscellaneous.arnold(), equals(isA<String>()));
        });
        test('Unsuccessful call', () {
            Tautulli _api = Tautulli(
                host: 'http://127.0.0.1:8181',
                apiKey: 'Invalid Key',
            );
            expect(() async => await _api.miscellaneous.arnold(), throwsA(isA<Exception>()));
        });
    });
}
