/// Library containing all model definitions for Tautulli data.
library tautulli_models;

import 'package:intl/intl.dart';
// Activity
export 'src/models/activity/activity.dart';
export 'src/models/activity/session.dart';
// Library
// Miscellaneous
// Newsletter
// Notifier
// System
// User

class TautulliModelUtilities {
    TautulliModelUtilities._();

    // String <-> Integer
    static int stringToInteger(String value) => int.tryParse(value);
    static String integerToString(int value) => value?.toString() ?? '';

    // String <-> Double
    static double stringToDouble(String value) => double.tryParse(value);
    static String doubleToString(double value) => value?.toString() ?? '';

    // String <-> DateTime
    static DateTime stringToDateTime(String date) => DateTime.tryParse(date);
    static DateTime millisecondsStringToDateTime(String date) {
        try {
            return DateTime.fromMillisecondsSinceEpoch(int.parse(date)*1000);
        } catch (_) {
            return null;
        }
    }
    static String dateTimeToStringMilliseconds(DateTime date) {
        try {
            return (date.millisecondsSinceEpoch/1000).floor().toString();
        } catch (_) {
            return "";
        }
    }

    static String dateTimeToStringYYYYMMDD(DateTime date) {
        try {
            return DateFormat('y-MM-dd').format(date);
        } catch (_) {
            return "";
        }
    }
}
