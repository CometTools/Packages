import 'package:tautulli/tautulli.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';

void main() {
    _getters();
    _factory();
}

void _getters() {
    group('Getters', () {
        TautulliConnection tautulli = TautulliConnection(host: 'http://127.0.0.1', apiKey: '1234567890');
        test('httpClient', () {
            expect(tautulli.httpClient, equals(isA<Dio>()));
        });
    });
}

void _factory() {
    group('Factory: ()', () {
        String host = 'http://127.0.0.1';
        String key = '1234567890';
        test('Valid Instance (host ends with slash)', () {
            expect(TautulliConnection(host: '$host/', apiKey: key), equals(isA<TautulliConnection>()));
        });
        test('Valid Instance (host does not end with splash)', () {
            expect(TautulliConnection(host: host, apiKey: key), equals(isA<TautulliConnection>()));
        });
        test('Valid Instance (strictTLS set to false)', () {
            expect(TautulliConnection(host: host, apiKey: key, strictTLS: false), equals(isA<TautulliConnection>()));
        });
        test('Valid Instance (Empty Strings)', () {
            expect(TautulliConnection(host: '', apiKey: ''), equals(isA<TautulliConnection>()));
        });
        test('Invalid Instance (host is null)', () {
            expect(() => TautulliConnection(host: null, apiKey: key), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (apiKey is null)', () {
            expect(() => TautulliConnection(host: host, apiKey: null), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (strictTLS is null)', () {
            expect(() => TautulliConnection(host: host, apiKey: key, strictTLS: null), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (followRedirects is null)', () {
            expect(() => TautulliConnection(host: host, apiKey: key, followRedirects: null), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (maxRedirects is null)', () {
            expect(() => TautulliConnection(host: host, apiKey: key, maxRedirects: null), throwsA(isA<AssertionError>()));
        });
    });
    group('Factory: .from()', () {
        test('Valid Instance', () {
            Dio _dio = Dio();
            expect(TautulliConnection.from(client: _dio), equals(isA<TautulliConnection>()));
        });
        test('Invalid Instance (client is null)', () {
            expect(() => TautulliConnection.from(client: null), throwsA(isA<AssertionError>()));
        });
    });
}
