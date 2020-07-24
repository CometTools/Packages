import 'package:tautulli/types.dart';
import 'package:test/test.dart';

void main() {
    _value();
}

void _value() {
    group('Type/TautulliImageHostService: .value', () {
        test('Check all possible valid values', () {
            for(TautulliImageHostService imageHost in TautulliImageHostService.values) {
                expect(imageHost.value, equals(isA<String>()));
            } 
        });
        test('Invalid Instance (null value)', () {
            TautulliImageHostService imageHost = null;
            expect(() => imageHost.value, throwsA(isA<Exception>()));
        });
    });
}
