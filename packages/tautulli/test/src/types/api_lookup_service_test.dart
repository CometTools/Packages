import 'package:tautulli/types.dart';
import 'package:test/test.dart';

void main() {
    _value();
}

void _value() {
    group('Type/TautulliAPILookupService: .value', () {
        test('Check all possible valid values', () {
            for(TautulliAPILookupService apiLookup in TautulliAPILookupService.values) {
                expect(apiLookup.value, equals(isA<String>()));
            } 
        });
        test('Invalid Instance (null value)', () {
            TautulliAPILookupService apiLookup = null;
            expect(() => apiLookup.value, throwsA(isA<Exception>()));
        });
    });
}
