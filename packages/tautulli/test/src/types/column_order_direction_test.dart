import 'package:tautulli/types.dart';
import 'package:test/test.dart';

void main() {
    _value();
}

void _value() {
    group('Type/TautulliColumnOrderDirection: .value', () {
        test('Check all possible valid values', () {
            for(TautulliColumnOrderDirection orderDirection in TautulliColumnOrderDirection.values) {
                expect(orderDirection.value, equals(isA<String>()));
            } 
        });
        test('Invalid Instance (null value)', () {
            TautulliColumnOrderDirection orderDirection = null;
            expect(() => orderDirection.value, throwsA(isA<Exception>()));
        });
    });
}
