import 'package:tautulli/types.dart';
import 'package:test/test.dart';

void main() {
    _value();
}

void _value() {
    group('Type/TautulliMediaType: .value', () {
        test('Check all possible values', () {
            for(TautulliMediaType mediaType in TautulliMediaType.values) {
                expect(mediaType.value, equals(isA<String>()));
            }
        });
    });
}
