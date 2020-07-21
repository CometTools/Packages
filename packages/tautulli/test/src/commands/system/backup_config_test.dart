import 'dart:io';
import 'package:tautulli/tautulli.dart';
import 'package:test/test.dart';

void main() {
    group('backup_config', () {
        test('Successful call', () async {
            Tautulli _api = Tautulli(
                host: Platform.environment['TAUTULLI_HOST'],
                apiKey: Platform.environment['TAUTULLI_APIKEY'],
            );
            await _api.system.backupConfig();
        });
        test('Unsuccessful call', () {
            Tautulli _api = Tautulli(
                host: 'http://127.0.0.1:8181',
                apiKey: 'Invalid Key',
            );
            expect(() async => await _api.system.backupConfig(), throwsA(isA<Exception>()));
        });
    });
}
