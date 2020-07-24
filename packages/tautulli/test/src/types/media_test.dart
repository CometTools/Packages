import 'package:tautulli/types.dart';
import 'package:test/test.dart';

void main() {
    _value();
}

void _value() {
    group('Type/TautulliMediaType: .value', () {
        test('Check all possible valid values', () {
            for(TautulliMediaType mediaType in TautulliMediaType.values) {
                expect(mediaType.value, equals(isA<String>()));
            } 
        });
        test('Invalid Instance (null value)', () {
            TautulliMediaType mediaType = null;
            expect(() => mediaType.value, throwsA(isA<Exception>()));
        });
    });
}
