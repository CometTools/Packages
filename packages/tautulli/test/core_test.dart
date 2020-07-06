import 'package:tautulli/tautulli.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';

void main() {
    _getters();
    _factory();
}

void _getters() {
    group('Getters', () {
        Tautulli tautulli = Tautulli(host: 'http://127.0.0.1', apiKey: '1234567890');
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
            expect(Tautulli(host: '$host/', apiKey: key), equals(isA<Tautulli>()));
        });
        test('Valid Instance (host does not end with splash)', () {
            expect(Tautulli(host: host, apiKey: key), equals(isA<Tautulli>()));
        });
        test('Valid Instance (strictTLS set to false)', () {
            expect(Tautulli(host: host, apiKey: key, strictTLS: false), equals(isA<Tautulli>()));
        });
        test('Valid Instance (Empty Strings)', () {
            expect(Tautulli(host: '', apiKey: ''), equals(isA<Tautulli>()));
        });
        test('Invalid Instance (host is null)', () {
            expect(() => Tautulli(host: null, apiKey: key), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (apiKey is null)', () {
            expect(() => Tautulli(host: host, apiKey: null), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (strictTLS is null)', () {
            expect(() => Tautulli(host: host, apiKey: key, strictTLS: null), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (followRedirects is null)', () {
            expect(() => Tautulli(host: host, apiKey: key, followRedirects: null), throwsA(isA<AssertionError>()));
        });
        test('Invalid Instance (maxRedirects is null)', () {
            expect(() => Tautulli(host: host, apiKey: key, maxRedirects: null), throwsA(isA<AssertionError>()));
        });
    });
}
