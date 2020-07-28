/// Library containing all model definitions for Tautulli data.
library tautulli_models;

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

    static int stringToInteger(String value) => int.tryParse(value);
    static String integerToString(int value) => value?.toString() ?? '';

    static double stringToDouble(String value) => double.tryParse(value);
    static String doubleToString(double value) => value?.toString() ?? '';
}
