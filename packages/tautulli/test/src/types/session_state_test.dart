import 'package:tautulli/types.dart';
import 'package:test/test.dart';

void main() {
    _value();
}

void _value() {
    group('Type/TautulliSessionState: .value', () {
        test('Check all possible valid values', () {
            for(TautulliSessionState sectionType in TautulliSessionState.values) {
                expect(sectionType.value, equals(isA<String>()));
            } 
        });
        test('Invalid Instance (null value)', () {
            TautulliSessionState sectionType = null;
            expect(() => sectionType.value, throwsA(isA<Exception>()));
        });
    });
}
