import 'package:tautulli/types.dart';
import 'package:test/test.dart';

void main() {
    _value();
}

void _value() {
    group('Type/TautulliSectionType: .value', () {
        test('Check all possible valid values', () {
            for(TautulliSectionType sectionType in TautulliSectionType.values) {
                expect(sectionType.value, equals(isA<String>()));
            } 
        });
        test('Invalid Instance (null value)', () {
            TautulliSectionType sectionType = null;
            expect(() => sectionType.value, throwsA(isA<Exception>()));
        });
    });
}
