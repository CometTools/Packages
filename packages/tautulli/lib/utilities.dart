/// Library containing all utilty functions for Tautulli data.
library tautulli_utilities;

/// [TautulliUtilities] gives access to static, functional operations. These are mainly used for the (de)serialization of received JSON data.
/// 
/// [TautulliUtilities] can not be initialized, all available functions are available statically.
class TautulliUtilities {
    TautulliUtilities._();

    /** String <-> Integer */
    /// Converts a string to an integer. Returns null on an invalid string.
    static int stringToInteger(String value) => int.tryParse(value);
    /// Converts an integer to a string. Returns an empty string on an invalid/null integer.
    static String integerToString(int value) => value?.toString() ?? '';

    /** Integer <-> Boolean */
    static bool integerToBoolean(int value) => value == 0 ? false : true;
    static int booleanToInteger(bool value) => value ? 1 : 0;

    /** String <-> Double */
    /// Converts a string to a double. Returns null on an invalid string.
    static double stringToDouble(String value) => double.tryParse(value);
    /// Converts a double to a string. Returns an empty string on an invalid/null double.
    static String doubleToString(double value) => value?.toString() ?? '';

    /** String <-> DateTime */
    /// Converts a date-formatted string to a [DateTime] object. Returns null on a poorly formatted string.
    static DateTime stringToDateTime(String date) => DateTime.tryParse(date);
    /// Converts a String containing a unix/Epoch millisecond value to a [DateTime] object. Returns null on a poorly formatted string.
    static DateTime millisecondsStringToDateTime(String date) {
        try { return DateTime.fromMillisecondsSinceEpoch(int.parse(date)*1000); } catch (_) {};
        return null;
    }
    /// Converts a [DateTime] object to a string containing a unix/Epoch millisecond value. Returns an empty string on an invalid/null [DateTime] object.
    static String dateTimeToStringMilliseconds(DateTime date) {
        try { return (date.millisecondsSinceEpoch/1000).floor().toString(); } catch (_) {};
        return "";
    }
}
